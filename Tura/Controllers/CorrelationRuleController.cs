using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrossCutting;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Tura.App.Contracts.Models;
using Tura.DataAccess.Contracts.Repositories;
using Tura.DataAccess.Repositories;

namespace Tura.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    [ApiController]
    public class CorrelationRuleController : ControllerBase
    {
        private readonly ICorrelationRulesRepository repository;
        public CorrelationRuleController(ICorrelationRulesRepository repository)
        {
            this.repository = repository;
        }

        // GET: api/Connector
        [HttpGet]
        [Produces(typeof(IEnumerable<CorrelationRuleModel>))]
        [ProducesResponseType(200)]
        //[Authorize(Roles = "Administradores", "usuariosTipo2")]
        public async Task<IActionResult> Get()
        {
            //if (session.userGroup() != "Adminisrtadores")
            //{
            //    return;
            //}

            var repositories = await repository.GetAll();

            return Ok(repositories.Select(Mapper.Entity2ModelMapper));
        }

        // GET: api/Connector/5
        [Produces(typeof(CorrelationRuleModel))]
        [ProducesResponseType(200)]
        [HttpGet("{id}")]
        public async Task<IActionResult> GetAsync(Guid id)
        {
            return Ok(Mapper.Entity2ModelMapper(await repository.Get(id)));
        }

        // POST: api/Connector
        [ProducesResponseType(200)]
        [HttpPost]
        public async Task<IActionResult> Post([FromBody]CorrelationRuleModel model)
        {
            var connector = Mapper.Model2EntityMapper(model);
            connector.Guid = new Guid();
            await repository.Add(connector);
            return Ok();
        }

        // PUT: api/Connector/5
        //[Produces(typeof(ConnectorModel))]
        [ProducesResponseType(200)]
        [HttpPut("{id}")]
        public async Task<IActionResult> Put(Guid id, [FromBody]CorrelationRuleModel model)
        {
            var connector = Mapper.Model2EntityMapper(model); 
            await repository.Update(connector);
            return Ok();
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(Guid id)
        {
            await repository.DeleteAsync(id);
            return Ok();
        }
    }
}
