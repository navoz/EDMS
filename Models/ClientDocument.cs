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

    public partial class ClientDocument {
        public long ID { get; set; }
        public long ClientID { get; set; }
        public long DocumentID { get; set; }

        public virtual Document Document { get; set; }
        public virtual UserData Client { get; set; }
    }
}
