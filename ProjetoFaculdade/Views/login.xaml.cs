using System;
using Microsoft.Data.SqlClient;
using Microsoft.Maui.Controls;


namespace ProjetoFaculdade.Views
{
    public partial class login : ContentPage
    {
        public login()
        {
            InitializeComponent();
        }
        private async void Button_telahome(object sender, EventArgs args)
        {
            string email = emailEntry.Text;
            string senha = senhaEntry.Text;

            bool isValid = ValidateLogin(email, senha);

            if (isValid)
            {
                App.Current.MainPage = new TelaHome();
            }
            else
            {
                await DisplayAlert("Erro", "Email ou senha incorretos.", "OK");
            }
        }

        private void Button_telaregistro(object sender, EventArgs args)
        {
            App.Current.MainPage = new TelaRegistro();
        }

        private bool ValidateLogin(string email, string senha)
        {
            // String de conexão ao banco de dados SQL Server
            string connectionString = @"Server=192.168.78.128,50853;Database=dbProjetoFaculdade;User Id=sa;Password=123;Encrypt=False;TrustServerCertificate=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT COUNT(1) FROM dbo.users WHERE email = @Email AND senha = @Senha";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Senha", senha);

                        int count = Convert.ToInt32(command.ExecuteScalar());

                        return count == 1;
                    }
                }
                catch (Exception ex)
                {
                    // Lida com exceções, se necessário
                    Console.WriteLine(ex.Message);
                    return false;
                }
            }
        }
    }
}

