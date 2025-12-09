using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DevConnect.Models;

[Table("tb_curtidas")]
public partial class TbCurtidas
{
    [Key]
    [Column("id")]
    public int Id { get; set; }

    [Column("id_usuario")]
    public int? IdUsuario { get; set; }

    [Column("id_publicacao")]
    public int? IdPublicacao { get; set; }

    [ForeignKey("IdPublicacao")]
    [InverseProperty("TbCurtidas")]
    public virtual TbPublicacao? IdPublicacaoNavigation { get; set; }

    [ForeignKey("IdUsuario")]
    [InverseProperty("TbCurtidas")]
    public virtual TbUsuario? IdUsuarioNavigation { get; set; }
}
