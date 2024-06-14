using System.Net.NetworkInformation;

namespace ProjetoFaculdade.Views;

public partial class LeitorDeCodigoBarras : ContentPage
{
	public LeitorDeCodigoBarras()
    {
        InitializeComponent();

        barcodeReader.Options = new ZXing.Net.Maui.BarcodeReaderOptions
        {
            Formats = ZXing.Net.Maui.BarcodeFormat.QrCode, 
            AutoRotate = true,
            Multiple = true
        };
    }

    private void barcodeReader_BarcodesDetected(object sender, ZXing.Net.Maui.BarcodeDetectionEventArgs e)
    {
        var first = e.Results?.FirstOrDefault();

        if (first is null)
            return;

        Dispatcher.DispatchAsync(async () =>
        {
            await DisplayAlert("Codigo Detectado", first.Value, "OK");
        });
    }

    private void button_listagemproduto(object sender, EventArgs e)
    {
        App.Current.MainPage = new ListagemProduto();
    }
}