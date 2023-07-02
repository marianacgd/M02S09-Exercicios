using FilmesApi.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
 
namespace FilmesApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FilmesController : ControllerBase
    {
        private readonly FilmesApiDbContext _context;

        public FilmesController(FilmesApiDbContext context)
        {
            _context = context;
        }

        /// <summary>
        /// Recupera uma lista de filmes do banco de dados
        /// </summary>
        /// <returns>Informações dos filmes buscados</returns>
        /// <response code="200">Com a lista de filmes presentes na base de dados</response>
        [ProducesResponseType(StatusCodes.Status200OK)]
        [HttpGet]
        public ActionResult<IEnumerable<Filme>> Get()
        {
            return Ok(_context.Filmes);
        }

        /// <summary>
        /// Recupera um filme no banco de dados usando seu id
        /// </summary>
        /// <param name="id">Id do filme a ser recuperado no banco</param>
        /// <returns>Informações do filme buscado</returns>
        /// <response code="200">Caso o id seja existente na base de dados</response>
        /// <response code="404">Caso o id seja inexistente na base de dados</response>
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [HttpGet("{id}")]
        public ActionResult<IEnumerable<Filme>> Get(int id)
        {
            var filme = _context.Filmes.Find(id);
            if (filme == null)
            {
                return NotFound(new { erro = "Registro não encontrado" });
            }
          
            return Ok(filme);
        }

        /// <summary>
        /// Adiciona um filme ao banco de dados
        /// </summary>
        /// <param name="filme">Objeto com os campos necessários para criação de um filme</param>
        /// <returns>Dados do filme cadastrado</returns>
        /// <response code="201">Caso inserção seja feita com sucesso</response>
        [ProducesResponseType(StatusCodes.Status201Created)]
        [HttpPost]
        public ActionResult<Filme> Post([FromBody] Filme filme)
        {
            _context.Filmes.Add(filme);
            _context.SaveChanges();
            return CreatedAtAction(nameof(Post), filme);
        }

        /// <summary>
        /// Atualiza um filme no banco de dados usando seu id
        /// </summary>
        /// <param name="id">Id do filme a ser atualizado no banco</param>
        /// <param name="filme">Objeto com os campos necessários para atualização de um filme</param>
        /// <returns>Sem conteúdo de retorno</returns>
        /// <response code="200">Caso o id seja existente na base de dados e o filme tenha sido atualizado</response>
        /// <response code="404">Caso o id seja inexistente na base de dados</response>
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [HttpPut("{id}")]
        public ActionResult<Filme> Put([FromRoute] int id, [FromBody] Filme filme)
        {
            var filmeUpdate = _context.Filmes.Find(id);

            if (filmeUpdate != null)
            {
                filmeUpdate.Nome = filme.Nome;
                filmeUpdate.Duracao = filme.Duracao;
                filmeUpdate.Diretor = filme.Diretor;
                filmeUpdate.Genero = filme.Genero;
                _context.Filmes.Update(filmeUpdate);
                _context.SaveChanges();
                return Ok(filme);
            }

            return NotFound(new { erro = "Registro não encontrado" });
        }

        /// <summary>
        /// Deleta um filme usando seu id
        /// </summary>
        /// <param name="id">Id do filme a ser removido da base de dados</param>
        /// <returns>Sem conteúdo de retorno</returns>
        /// <response code="204">Caso o id seja existente na base de dados e o filme tenha sido removido</response>
        /// <response code="404">Caso o id seja inexistente na base de dados</response>
        [ProducesResponseType(StatusCodes.Status204NoContent)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [HttpDelete("{id}")]
        public ActionResult<Filme> Delete(int id)
        {
            var filmeDelete = _context.Filmes.Find(id); 
            
            if (filmeDelete != null)
            {
                _context.Filmes.Remove(filmeDelete);
                _context.SaveChanges();
             
                return StatusCode(204);
            }

            return NotFound(new { erro = "Registro não encontrado" });
        }
    }
}
