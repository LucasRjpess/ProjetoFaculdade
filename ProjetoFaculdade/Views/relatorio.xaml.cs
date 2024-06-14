using System.Collections.Generic;
using System.IO;
using System.Threading.Tasks;
using iTextSharp.text;
using iTextSharp.text.pdf;
using Microsoft.Data.SqlClient;
using Microsoft.Maui.Controls;
using ProjetoFaculdade.Models;

namespace ProjetoFaculdade.Views
{
    public partial class relatorio : ContentPage
    {
        string connectionString = @"Server=192.168.78.128,50853;Database=dbProjetoFaculdade;User Id=sa;Password=123;Encrypt=False;TrustServerCertificate=True";

        public relatorio()
        {
            InitializeComponent();
            CarregarRelatorio();
        }

        private async void CarregarRelatorio()
        {
            List<Produto> produtosAbaixoDoMinimo = await GetProdutosAbaixoDoMinimoAsync();
            collectionViewRelatorio.ItemsSource = produtosAbaixoDoMinimo;
        }

        private async Task<List<Produto>> GetProdutosAbaixoDoMinimoAsync()
        {
            List<Produto> produtos = new List<Produto>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                await conn.OpenAsync();
                string query = "SELECT id_produto, cod_barras, descricao, marca, cor, preco, estoque, estoque_minimo FROM Produto WHERE estoque < estoque_minimo";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = await cmd.ExecuteReaderAsync())
                    {
                        while (await reader.ReadAsync())
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

        private async void OnGeneratePdfButtonClicked(object sender, EventArgs e)
        {
            List<Produto> produtosAbaixoDoMinimo = await GetProdutosAbaixoDoMinimoAsync();
            GeneratePdf(produtosAbaixoDoMinimo);
        }

        private void GeneratePdf(List<Produto> produtos)
        {
            Document doc = new Document();
            string path = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), "RelatorioEstoqueAbaixo.pdf");

            PdfWriter.GetInstance(doc, new FileStream(path, FileMode.Create));
            doc.Open();

            iTextSharp.text.Font titleFont = new iTextSharp.text.Font(iTextSharp.text.Font.FontFamily.HELVETICA, 18, iTextSharp.text.Font.BOLD);
            Paragraph title = new Paragraph("Relatório de Produtos com Estoque Abaixo do Mínimo", titleFont);
            title.Alignment = iTextSharp.text.Element.ALIGN_CENTER;
            doc.Add(title);
            doc.Add(new Paragraph("\n"));

            PdfPTable table = new PdfPTable(7);
            table.AddCell("Descrição");
            table.AddCell("ID");
            table.AddCell("Código de Barras");
            table.AddCell("Marca");
            table.AddCell("Cor");
            table.AddCell("Preço");
            table.AddCell("Estoque / Estoque Mínimo");

            foreach (var produto in produtos)
            {
                table.AddCell(produto.Descricao);
                table.AddCell(produto.Id.ToString());
                table.AddCell(produto.CodigoDeBarras);
                table.AddCell(produto.Marca);
                table.AddCell(produto.Cor);
                table.AddCell(produto.Preco.ToString("F2"));
                table.AddCell($"{produto.Estoque} / {produto.EstoqueMinimo}");
            }

            doc.Add(table);
            doc.Close();

            DisplayAlert("PDF Gerado", $"O relatório foi salvo em: {path}", "OK").ConfigureAwait(false);
        }
        private async void button_telahome(object sender, EventArgs e)
        {
            App.Current.MainPage = new TelaHome();
        }
    }
}



namespace ProjetoFaculdade.Models
{
    public class Produto
    {
        public int Id { get; set; }
        public string CodigoDeBarras { get; set; }
        public string Descricao { get; set; }
        public string Marca { get; set; }
        public string Cor { get; set; }
        public decimal Preco { get; set; }
        public int Estoque { get; set; }
        public int EstoqueMinimo { get; set; }
    }
}
