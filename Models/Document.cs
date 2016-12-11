//------------------------------------------------------------------------------
// <auto-generated>
//    Этот код был создан из шаблона.
//
//    Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//    Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EDMS.Models {
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class Document {
        public Document() {
            this.ClientDocuments = new HashSet<ClientDocument>();
        }

        [Key]
        public long ID { get; set; }

        [Required]
        [Display(Name = "Номер")]
        public long Number { get; set; }

        [Required]
        [Display(Name = "Название")]
        public string Name { get; set; }

        [Required]
        [Display(Name = "Состояние")]
        public string Status { get; set; }

        [Required]
        [Display(Name = "Дата создания")]
        [DataType(DataType.Date)]
        public System.DateTime CreateDate { get; set; }

        [Required]
        [Display(Name = "Дата заключения")]
        [DataType(DataType.Date)]
        public System.DateTime ConclusionDate { get; set; }

        [Required]
        [Display(Name = "Организация")]
        public long OrganizationID { get; set; }

        [Display(Name = "Создатель")]
        public long CreatorID { get; set; }

        [Display(Name = "Модератор")]
        public Nullable<long> ModeratorID { get; set; }

        public virtual ICollection<ClientDocument> ClientDocuments { get; set; }
        public virtual UserData Creator { get; set; }
        public virtual UserData Moderator { get; set; }
        public virtual Organization Organization { get; set; }
    }
}
