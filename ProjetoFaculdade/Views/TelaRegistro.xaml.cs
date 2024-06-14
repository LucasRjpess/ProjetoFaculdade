using Newtonsoft.Json;
using System;
using System.Net.Http;
using System.Threading.Tasks;
using Microsoft.Maui.Controls;
using Microsoft.Data.SqlClient;

namespace ProjetoFaculdade.Views
{
    public partial class TelaRegistro : ContentPage

    {
        string connectionString = @"Server=192.168.232.128,50853;Database=dbProjetoFaculdade;User Id=sa;Password=123;Encrypt=False;TrustServerCertificate=True";
        public TelaRegistro()
        {
            InitializeComponent();
        }

        

        private async void CepEntry_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (e.NewTextValue.Length == 8) // Verifica se o CEP tem 8 dígitos
            {
                await BuscaCepAsync(e.NewTextValue);
            }
        }

        private async Task BuscaCepAsync(string cep)
        {
            try
            {
                using (HttpClient client = new HttpClient())
                {
                    string url = $"https://viacep.com.br/ws/{cep}/json/";
                    var response = await client.GetStringAsync(url);
                    var endereco = JsonConvert.DeserializeObject<Endereco>(response);

                    if (endereco != null && !string.IsNullOrEmpty(endereco.Logradouro))
                    {
                        EnderecoEntry.Text = endereco.Logradouro;
                        BairroEntry.Text = endereco.Bairro;
                        CidadeEntry.Text = endereco.Localidade;
                        UfEntry.Text = endereco.Uf;
                    }
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Erro", "Não foi possível buscar o CEP. Por favor, tente novamente.", "OK");
            }
        }

        private async void button_login(object sender, EventArgs e)
        {
            if (((Button)sender).Text == "Registrar")
            {
                if (string.IsNullOrWhiteSpace(EmailEntry.Text) ||
                    string.IsNullOrWhiteSpace(SenhaEntry.Text) ||
                    string.IsNullOrWhiteSpace(NomeEntry.Text) ||
                    string.IsNullOrWhiteSpace(CepEntry.Text) ||
                    string.IsNullOrWhiteSpace(EnderecoEntry.Text) ||
                    string.IsNullOrWhiteSpace(CidadeEntry.Text) ||
                    string.IsNullOrWhiteSpace(BairroEntry.Text) ||
                    string.IsNullOrWhiteSpace(UfEntry.Text))
                {
                    await DisplayAlert("Erro", "Todos os campos devem ser preenchidos", "OK");
                    return;
                }

                try
                {
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        string query = "INSERT INTO users (nome, email, senha, cep, endereco, bairro, uf, cidade) VALUES (@Nome, @Email, @Senha, @Cep, @Endereco,@Bairro,@Uf,@Cidade)";

                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            command.Parameters.AddWithValue("@Email", EmailEntry.Text);
                            command.Parameters.AddWithValue("@Senha", SenhaEntry.Text);
                            command.Parameters.AddWithValue("@Nome", NomeEntry.Text);
                            command.Parameters.AddWithValue("@Cep", CepEntry.Text);
                            command.Parameters.AddWithValue("@Endereco", EnderecoEntry.Text);
                            command.Parameters.AddWithValue("@Cidade", CidadeEntry.Text);
                            command.Parameters.AddWithValue("@Bairro", BairroEntry.Text);
                            command.Parameters.AddWithValue("@Uf", UfEntry.Text);

                            command.ExecuteNonQuery();
                        }
                    }

                    EmailEntry.Text = string.Empty;
                    SenhaEntry.Text = string.Empty;
                    NomeEntry.Text = string.Empty;
                    CepEntry.Text = string.Empty;
                    EnderecoEntry.Text = string.Empty;
                    CidadeEntry.Text = string.Empty;
                    BairroEntry.Text = string.Empty;
                    UfEntry.Text = string.Empty;

                    await DisplayAlert("Sucesso", "Usuario cadastrado com sucesso", "OK");
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Erro", $"Erro ao cadastrar Usuario: {ex.Message}", "OK");
                }
            }
            else if (((Button)sender).Text == "Voltar")
            {
                // Lógica para voltar à tela anterior
                App.Current.MainPage = new login();
            }
        }

    }



    public class Endereco
    {
        [JsonProperty("logradouro")]
        public string Logradouro { get; set; }

        [JsonProperty("bairro")]
        public string Bairro { get; set; }

        [JsonProperty("localidade")]
        public string Localidade { get; set; }

        [JsonProperty("uf")]
        public string Uf { get; set; }
    }



}

