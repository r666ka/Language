//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LanguageEnd
{
    using System;
    using System.Collections.Generic;
    
    public partial class Servicee
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Servicee()
        {
            this.ClientService = new HashSet<ClientService>();
        }
    
        public int ID { get; set; }
        public string Наименование_услуги { get; set; }
        public string C_Длительность { get; set; }
        public Nullable<double> C_Стоимость { get; set; }
        public Nullable<double> C_Действующая_скидка { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientService> ClientService { get; set; }
    }
}
