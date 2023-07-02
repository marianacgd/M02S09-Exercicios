using Microsoft.EntityFrameworkCore;

namespace FilmesApi.Models
{
    public class FilmesApiDbContext : DbContext
    {
        public FilmesApiDbContext(DbContextOptions options) : base(options)
        {
        }
    }
}
