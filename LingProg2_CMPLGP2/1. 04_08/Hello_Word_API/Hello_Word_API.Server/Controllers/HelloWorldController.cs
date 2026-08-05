using Microsoft.AspNetCore.Mvc;

namespace Hello_Word_API.Server.Controllers
{
    [ApiController]
    [Route("api/ppfuark")]
    public class HelloWorldController : ControllerBase {
        [HttpGet]
        public IActionResult Get()
        {
            return Ok("Hello World Reload");
        }

        [HttpGet("{text}")]
        public IActionResult Get(string text)
        {
            return Ok($"Hello World {text}");
        }
    }

}
