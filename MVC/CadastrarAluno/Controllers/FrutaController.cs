using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

using CadastrarAluno.Models;

namespace CadastrarAluno.Controllers
{
    public class FrutaController : Controller
    {
        private readonly ILogger<FrutaController> _logger;

        public FrutaController(ILogger<FrutaController> logger)
        {
            _logger = logger;
        }

        private List<Fruta> frutas = new List<Fruta>
        {
            new Fruta { Id = 1, Nome = "Maca", Cor = "Vermelho", Categoria = "Tropical" },
            new Fruta { Id = 2, Nome = "Banana", Cor = "Amarelo", Categoria = "Tropical" },
            new Fruta { Id = 3, Nome = "Uva", Cor = "Roxa", Categoria = "Tropical" },
        };

        public IActionResult Index()
        {
            return View(frutas); // Passa a lista de frutas para a view
        }




        //Action para cadastrar uma fruta - Formulário
        public IActionResult Create()
        {
           
            return View();
        }



        //método para salvar a fruta recebida do formulário, sem uma view
        [HttpPost]
        public IActionResult Create(Fruta fruta)
        {

           fruta.Id = frutas.Max(f => f.Id) + 1;
           frutas.Add(fruta);
           return RedirectToAction("Index");
           
        }

        public IActionResult FrutaCitricas()
        {
            // Implementação futura
            return View(frutas);
        }

        public IActionResult FrutaTropicais()
        {
            // Implementação futura
            return View(frutas);
        }


    }
}