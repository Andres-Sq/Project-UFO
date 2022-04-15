using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace UFO_API.Models
{
    public partial class ProyectoUFO_DBContext : DbContext
    {
        public ProyectoUFO_DBContext()
        {
        }

        public ProyectoUFO_DBContext(DbContextOptions<ProyectoUFO_DBContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Carrera> Carrera { get; set; }
        public virtual DbSet<Correquisitos> Correquisitos { get; set; }
        public virtual DbSet<Curso> Curso { get; set; }
        public virtual DbSet<Estudiante> Estudiante { get; set; }
        public virtual DbSet<HistoricosNotasAprobacion> HistoricosNotasAprobacion { get; set; }
        public virtual DbSet<MatriculaPorEstudiante> MatriculaPorEstudiante { get; set; }
        public virtual DbSet<PeriodoLectivo> PeriodoLectivo { get; set; }
        public virtual DbSet<PlanDeEstudios> PlanDeEstudios { get; set; }
        public virtual DbSet<Requisitos> Requisitos { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Server=.\\SQLExpress;Database=ProyectoUFO_DB;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Carrera>(entity =>
            {
                entity.HasKey(e => e.CarrerarId);

                entity.Property(e => e.CarrerarId)
                    .HasColumnName("CarrerarID")
                    .ValueGeneratedNever();

                entity.Property(e => e.Nombre).HasMaxLength(50);
            });

            modelBuilder.Entity<Correquisitos>(entity =>
            {
                entity.HasKey(e => new { e.CursoId, e.CorrequisitoId });

                entity.Property(e => e.CursoId).HasColumnName("CursoID");

                entity.Property(e => e.CorrequisitoId).HasColumnName("CorrequisitoID");

                entity.HasOne(d => d.Correquisito)
                    .WithMany(p => p.CorrequisitosCorrequisito)
                    .HasForeignKey(d => d.CorrequisitoId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Correquisitos_Curso1");

                entity.HasOne(d => d.Curso)
                    .WithMany(p => p.CorrequisitosCurso)
                    .HasForeignKey(d => d.CursoId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Correquisitos_Curso");
            });

            modelBuilder.Entity<Curso>(entity =>
            {
                entity.Property(e => e.CursoId)
                    .HasColumnName("CursoID")
                    .ValueGeneratedNever();

                entity.Property(e => e.Nombre).HasMaxLength(50);
            });

            modelBuilder.Entity<Estudiante>(entity =>
            {
                entity.Property(e => e.EstudianteId)
                    .HasColumnName("EstudianteID")
                    .ValueGeneratedNever();

                entity.Property(e => e.Apellidos).HasMaxLength(100);

                entity.Property(e => e.Carnet).HasMaxLength(50);

                entity.Property(e => e.Nombre).HasMaxLength(50);
            });

            modelBuilder.Entity<HistoricosNotasAprobacion>(entity =>
            {
                entity.HasKey(e => new { e.PeriodoId, e.CursoId });

                entity.Property(e => e.PeriodoId).HasColumnName("PeriodoID");

                entity.Property(e => e.CursoId).HasColumnName("CursoID");

                entity.Property(e => e.FechaUltimoCambio).HasColumnType("datetime");

                entity.HasOne(d => d.Curso)
                    .WithMany(p => p.HistoricosNotasAprobacion)
                    .HasForeignKey(d => d.CursoId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_HistoricosNotasAprobacion_Curso");

                entity.HasOne(d => d.Periodo)
                    .WithMany(p => p.HistoricosNotasAprobacion)
                    .HasForeignKey(d => d.PeriodoId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_HistoricosNotasAprobacion_PeriodoLectivo");
            });

            modelBuilder.Entity<MatriculaPorEstudiante>(entity =>
            {
                entity.HasKey(e => new { e.PeriodoId, e.EstudianteId, e.CursoId, e.CarreraId });

                entity.Property(e => e.PeriodoId).HasColumnName("PeriodoID");

                entity.Property(e => e.EstudianteId).HasColumnName("EstudianteID");

                entity.Property(e => e.CursoId).HasColumnName("CursoID");

                entity.Property(e => e.CarreraId).HasColumnName("CarreraID");

                entity.HasOne(d => d.Estudiante)
                    .WithMany(p => p.MatriculaPorEstudiante)
                    .HasForeignKey(d => d.EstudianteId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_MatriculaPorEstudiante_Estudiante1");

                entity.HasOne(d => d.Periodo)
                    .WithMany(p => p.MatriculaPorEstudiante)
                    .HasForeignKey(d => d.PeriodoId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_MatriculaPorEstudiante_PeriodoLectivo");

                entity.HasOne(d => d.C)
                    .WithMany(p => p.MatriculaPorEstudiante)
                    .HasForeignKey(d => new { d.CursoId, d.CarreraId })
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_MatriculaPorEstudiante_PlanDeEstudios");
            });

            modelBuilder.Entity<PeriodoLectivo>(entity =>
            {
                entity.HasKey(e => e.PeriodoId)
                    .HasName("PK_PeriodoLectivo_1");

                entity.Property(e => e.PeriodoId)
                    .HasColumnName("PeriodoID")
                    .ValueGeneratedNever();

                entity.Property(e => e.Estado).HasMaxLength(50);

                entity.Property(e => e.FechaFinal).HasColumnType("datetime");

                entity.Property(e => e.FechaInicio).HasColumnType("datetime");

                entity.Property(e => e.Nombre)
                    .IsRequired()
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<PlanDeEstudios>(entity =>
            {
                entity.HasKey(e => new { e.CursoId, e.CarreraId });

                entity.Property(e => e.CursoId).HasColumnName("CursoID");

                entity.Property(e => e.CarreraId).HasColumnName("CarreraID");

                entity.HasOne(d => d.Carrera)
                    .WithMany(p => p.PlanDeEstudios)
                    .HasForeignKey(d => d.CarreraId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PlanDeEstudios_Carrera");

                entity.HasOne(d => d.Curso)
                    .WithMany(p => p.PlanDeEstudios)
                    .HasForeignKey(d => d.CursoId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PlanDeEstudios_Curso");
            });

            modelBuilder.Entity<Requisitos>(entity =>
            {
                entity.HasKey(e => new { e.CursoId, e.RequisitoId });

                entity.Property(e => e.CursoId).HasColumnName("CursoID");

                entity.Property(e => e.RequisitoId).HasColumnName("RequisitoID");

                entity.HasOne(d => d.Curso)
                    .WithMany(p => p.RequisitosCurso)
                    .HasForeignKey(d => d.CursoId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Requisitos_Curso");

                entity.HasOne(d => d.Requisito)
                    .WithMany(p => p.RequisitosRequisito)
                    .HasForeignKey(d => d.RequisitoId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Requisitos_Curso1");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
