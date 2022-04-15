﻿using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using UFO_API.Models;

namespace UFO_API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PeriodoController : ControllerBase
    {
        [HttpPost]
        [Route(nameof(ModificarPeriodo))]
        public IEnumerable<PeriodoLectivo> ModificarPeriodo(PeriodoLectivo P_PeriodoL)
        {

            using (var context = new ProyectoUFO_DBContext())
            {

                PeriodoLectivo PerLec = context.PeriodoLectivo.Where(per => per.PeriodoId == P_PeriodoL.PeriodoId).FirstOrDefault();

                if (PerLec.Estado.Equals("ABIERTO"))
                {
                    PerLec.Estado = "FINALIZADO";
                }

                context.SaveChanges();

                return context.PeriodoLectivo.ToList();
            }
        }

        [HttpPost]
        [Route(nameof(ModificarNota))]
        public OkObjectResult ModificarNota(MatriculaPorEstudiante P_MatPorEst)
        {

            using (var context = new ProyectoUFO_DBContext())
            {

                MatriculaPorEstudiante matriculaEstudiante = context.MatriculaPorEstudiante.Where(matricula => matricula.EstudianteId == P_MatPorEst.EstudianteId
                                                                                            && matricula.CursoId == P_MatPorEst.CursoId).FirstOrDefault(); //Encuentro la matricula en base al estudiante id y al curso id

                PeriodoLectivo PerLec = context.PeriodoLectivo.Where(per => per.PeriodoId == matriculaEstudiante.PeriodoId).FirstOrDefault();

                if (PerLec.Estado.Equals("FINALIZADO"))
                {
                    matriculaEstudiante.Nota = P_MatPorEst.Nota;
                }

                context.SaveChanges();

                return Ok("All good");
            }
        }
        
        [HttpGet]
        public IEnumerable<PeriodoLectivo> Get()
        {
            using (var context = new ProyectoUFO_DBContext())
            {
                //GET ALL Periods in the DB
                return context.PeriodoLectivo.ToList();

                //GET BY ID
                //return context.PeriodoLectivo.Where(per => per.PeriodoId == 1).ToList();

                //ADD Period
                //Create a Period first, add it to the table, then save changes...
                /*
                PeriodoLectivo periodoNuevo = new PeriodoLectivo();

                periodoNuevo.PeriodoId = 3;
                periodoNuevo.Nombre = "TercerCuatri2022";
                periodoNuevo.FechaInicio = DateTime.Now;
                periodoNuevo.FechaFinal = DateTime.Now.AddMonths(4);
                periodoNuevo.Estado = "CREADO";

                context.PeriodoLectivo.Add(periodoNuevo);

                context.SaveChanges();

                return context.PeriodoLectivo.Where(per => per.PeriodoId == 3).ToList();*/

                //EDIT Period
                /*
                PeriodoLectivo PerLec = context.PeriodoLectivo.Where(per => per.PeriodoId == 2).FirstOrDefault();

                PerLec.Estado = "CREADO";

                context.SaveChanges();

                return context.PeriodoLectivo.ToList(); */

                //DELETE Period 
                /*
                PeriodoLectivo PerLec = context.PeriodoLectivo.Where(per => per.PeriodoId == 3).FirstOrDefault();

                context.PeriodoLectivo.Remove(PerLec);

                context.SaveChanges();

                return context.PeriodoLectivo.ToList(); */
            }
        }
    }
}
