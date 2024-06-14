using ProjetoFaculdade.Views;

namespace ProjetoFaculdade
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new login();
        }
    }
}
