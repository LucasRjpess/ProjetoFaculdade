using Microsoft.Data.SqlClient;

namespace ProjetoFaculdade.Views
{
    public partial class CadastroProduto : ContentPage
    {
        string connectionString = @"Server=192.168.78.128,50853;Database=dbProjetoFaculdade;User Id=sa;Password=123;Encrypt=False;TrustServerCertificate=True";

        public CadastroProduto()
        {
            InitializeComponent();
        }

        private async void button_telahome(object sender, EventArgs e)
        {
            if (((Button)sender).Text == "Cadastrar")
            {
                if (string.IsNullOrWhiteSpace(codigobarrasEntry.Text) ||
                    string.IsNullOrWhiteSpace(descricaoEntry.Text) ||
                    string.IsNullOrWhiteSpace(precoEntry.Text) ||
                    string.IsNullOrWhiteSpace(marcaEntry.Text) ||
                    string.IsNullOrWhiteSpace(corEntry.Text)  ||
                    string.IsNullOrWhiteSpace(estoqueEntry.Text) ||
                    string.IsNullOrWhiteSpace(estoqueminimoEntry.Text))
                {
                    await DisplayAlert("Erro", "Todos os campos devem ser preenchidos", "OK");
                    return;
                }

                try
                {
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        string query = "INSERT INTO produto (cod_barras, descricao, preco, marca, cor, estoque, estoque_minimo) VALUES (@CodigoBarras, @Descricao, @Preco, @Marca, @Cor, @Estoque, @EstoqueMinimo)";

                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            command.Parameters.AddWithValue("@CodigoBarras", codigobarrasEntry.Text);
                            command.Parameters.AddWithValue("@Descricao", descricaoEntry.Text);
                            command.Parameters.AddWithValue("@Preco", Convert.ToDecimal(precoEntry.Text));
                            command.Parameters.AddWithValue("@Marca", marcaEntry.Text);
                            command.Parameters.AddWithValue("@Cor", corEntry.Text);
                            command.Parameters.AddWithValue("@Estoque", estoqueEntry.Text);
                            command.Parameters.AddWithValue("@EstoqueMinimo", estoqueminimoEntry.Text);

                            command.ExecuteNonQuery();
                        }
                    }

                    codigobarrasEntry.Text = string.Empty;
                    descricaoEntry.Text = string.Empty;
                    precoEntry.Text = string.Empty;
                    marcaEntry.Text = string.Empty;
                    corEntry.Text = string.Empty;
                    estoqueEntry.Text = string.Empty;
                    estoqueminimoEntry.Text = string.Empty;

                    await DisplayAlert("Sucesso", "Produto cadastrado com sucesso", "OK");
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Erro", $"Erro ao cadastrar produto: {ex.Message}", "OK");
                }
            }
            else if (((Button)sender).Text == "Voltar")
            {
                // Lógica para voltar à tela anterior
                App.Current.MainPage = new TelaHome();
            }
        }
    }
}