using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DevConnect.Models;

[Table("tb_comentarios")]
public partial class TbComentarios
{
    [Key]
    [Column("id")]
    public int Id { get; set; }

    [Column("texto")]
    [StringLength(1000)]
    public string Texto { get; set; } = null!;

    [Column("data_comentario")]
    public DateOnly DataComentario { get; set; }

    [Column("id_usuario")]
    public int? IdUsuario { get; set; }

    [Column("id_publicacao")]
    public int? IdPublicacao { get; set; }

    [ForeignKey("IdPublicacao")]
    [InverseProperty("TbComentarios")]
    public virtual TbPublicacao? IdPublicacaoNavigation { get; set; }

    [ForeignKey("IdUsuario")]
    [InverseProperty("TbComentarios")]
    public virtual TbUsuario? IdUsuarioNavigation { get; set; }
}
