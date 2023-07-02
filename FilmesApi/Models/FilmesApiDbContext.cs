using Microsoft.EntityFrameworkCore;

namespace FilmesApi.Models
{
    public class FilmesApiDbContext : DbContext
    {
        public FilmesApiDbContext(DbContextOptions options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            SeedDataFilme(modelBuilder);
        }
        //public FilmesApiDbContext() { }

        public virtual DbSet<Filme> Filmes { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("ServerConnection");
            }
        }

        private static void SeedDataFilme(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Filme>().HasData(
              new Filme
              {
                  Id = 1,
                  Nome = "Blade Runner",
                  Diretor = "Jane Campion",
                  Duracao = 60,
                  Genero = "Suspense"
              },
              new Filme
              {
                  Id = 2,
                  Nome = "Blade Runner2",
                  Diretor = "Jane Campion",
                  Duracao = 60,
                  Genero = "Suspense"
              },
              new Filme
              {
                  Id = 3,
                  Nome = "Blade Runner3",
                  Diretor = "Jane Campion",
                  Duracao = 60,
                  Genero = "Suspense"
              },
              new Filme
              {
                  Id = 4,
                  Nome = "Blade Runner4",
                  Diretor = "Jane Campion",
                  Duracao = 60,
                  Genero = "Suspense"
              },
                new Filme
                {
                    Id = 5,
                    Nome = "Blade Runner5",
                    Diretor = "Jane Campion",
                    Duracao = 60,
                    Genero = "Suspense"
                }
          );
        }
    }
}
