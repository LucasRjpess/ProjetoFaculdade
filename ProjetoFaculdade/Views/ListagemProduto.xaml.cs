using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using Microsoft.Maui.Controls;

namespace ProjetoFaculdade.Views
{
    public partial class ListagemProduto : ContentPage
    {
        string connectionString = @"Server=192.168.78.128,50853;Database=dbProjetoFaculdade;User Id=sa;Password=123;Encrypt=False;TrustServerCertificate=True";

        public ListagemProduto()
        {
            InitializeComponent();
        }

        private void OnConsultarClicked(object sender, EventArgs e)
        {
            string descricao = entryProdutoDescricao.Text;
            if (!string.IsNullOrWhiteSpace(descricao))
            {
                CarregarProdutos(descricao);
            }
            else
            {
                DisplayAlert("Erro", "Por favor, digite uma descrição de produto válida.", "OK");
            }
        }

        private void CarregarProdutos(string descricao)
        {
            List<Produto> produtos = GetProdutosByDescricao(descricao);
            if (produtos.Count > 0)
            {
                collectionViewProdutos.ItemsSource = produtos;
            }
            else
            {
                DisplayAlert("Erro", "Nenhum produto encontrado", "OK");
                collectionViewProdutos.ItemsSource = null;
            }
        }

        private List<Produto> GetProdutosByDescricao(string descricao)
        {
            List<Produto> produtos = new List<Produto>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string query = "SELECT * FROM Produto WHERE descricao LIKE @Descricao";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.Add(new SqlParameter("@Descricao", System.Data.SqlDbType.NVarChar) { Value = "%" + descricao + "%" });

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Produto produto = new Produto
                            {
                                Id = Convert.ToInt32(reader["id_produto"]),
                                CodigoDeBarras = reader["cod_barras"].ToString(),
                                Descricao = reader["descricao"].ToString(),
                                Marca = reader["marca"].ToString(),
                                Cor = reader["cor"].ToString(),
                                Preco = Convert.ToDecimal(reader["preco"]),
                                Estoque = Convert.ToInt32(reader["estoque"]),
                                EstoqueMinimo = Convert.ToInt32(reader["estoque_minimo"])
                            };
                            produtos.Add(produto);
                        }
                    }
                }
            }

            return produtos;
        }


        private void button_telahome(object sender, EventArgs e)
        {
            App.Current.MainPage = new TelaHome();
        }

        private void button_leitorcodigo(object sender, EventArgs e)
        {
            App.Current.MainPage = new LeitorDeCodigoBarras();
        }

        public class Produto
        {
            public int Id { get; set; }
            public string Descricao { get; set; }
            public string CodigoDeBarras { get; set; }
            public string Marca { get; set; }
            public string Cor { get; set; }
            public decimal Preco { get; set; }
            public int Estoque { get; set; }
            public int EstoqueMinimo { get; set; }

            public bool IsEstoqueBaixo => Estoque < EstoqueMinimo;
        }
    }
}
