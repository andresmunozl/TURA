using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrossCutting;
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
    public class UserController : ControllerBase
    {
        private readonly IUserRepository repository;
        public UserController(IUserRepository repository)
        {
            this.repository = repository;
        }

        // GET: api/Identity
        [HttpGet]
        [Produces(typeof(IEnumerable<UserModel>))]
        [ProducesResponseType(200)]
        public async Task<IActionResult> Get()
        {
            var identities = await repository.GetAll();
            return Ok(identities.Select(Mapper.Entity2ModelMapper));
        }

        // GET: api/Connector/5
        [Produces(typeof(UserModel))]
        [ProducesResponseType(200)]
        [HttpGet("{id}")]
        public async Task<IActionResult> GetAsync(Guid id)
        {
            return Ok(Mapper.Entity2ModelMapper(await repository.Get(id)));
        }

        // POST: api/Connector
        [ProducesResponseType(200)]
        [HttpPost]
        public async Task<IActionResult> Post([FromBody]UserModel model)
        {
            var modelEntity = Mapper.Model2EntityMapper(model);
            modelEntity.Id = new Guid();
            await repository.Add(modelEntity);

            return Ok();
        }

        // PUT: api/Connector/5
        //[Produces(typeof(UserModel))]
        [ProducesResponseType(200)]
        [HttpPut("{id}")]
        public async Task<IActionResult> Put(Guid id, [FromBody]UserModel model)
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
