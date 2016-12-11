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

    public partial class UserData {
        public UserData() {
            this.ClientDocuments = new HashSet<ClientDocument>();
            this.CreatorDocumens = new HashSet<Document>();
            this.ModeratorDocuments = new HashSet<Document>();
        }

        [Key]
        public long ID { get; set; }

        [Required]
        [Display(Name="ФИО")]
        public string FIO { get; set; }

        [Required]
        [Display(Name = "Адрес электронной почты")]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [Required]
        [Display(Name = "Телефонный номер")]
        public string PhoneNumber { get; set; }

        [Required]
        [Display(Name = "Организация")]
        public long OrganizationID { get; set; }

        [Required]
        public int ProfileID { get; set; }

        public virtual ICollection<ClientDocument> ClientDocuments { get; set; }
        public virtual ICollection<Document> CreatorDocumens { get; set; }
        public virtual ICollection<Document> ModeratorDocuments { get; set; }
        public virtual Organization Organization { get; set; }
    }
}
