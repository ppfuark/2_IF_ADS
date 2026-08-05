using Microsoft.AspNetCore.Mvc;

namespace Hello_Word_API.Server.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class HelloWorldController : ControllerBase {
        [HttpGet]
        public IActionResult Get()
        {
            return Ok("Hello World Reload");
        }
    }

}
