namespace ProjetoFaculdade.Views;

public partial class TelaHome : ContentPage
{
	public TelaHome()
	{
		InitializeComponent();
	}

    private void button_telalogin(object sender, EventArgs e)
    {
		App.Current.MainPage = new login();
    }

    private void button_cadastroproduto(object sender, EventArgs e)
    {
        App.Current.MainPage = new CadastroProduto();
    }

    private void button_listagemproduto(object sender, EventArgs e)
    {
        App.Current.MainPage = new ListagemProduto();
    }

    private void button_Relatorio(object sender, EventArgs e)
    {
        App.Current.MainPage = new relatorio();
    }
}