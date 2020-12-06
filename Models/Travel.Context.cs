namespace Ec1GroupProject.Models 
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;

    public partial class UserInformationEntities : DbContext
    {
        public UserInformationEntities()
            : base("name=UserInformationEntities")
        {
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }

        public virtual DbSet<BookFlight> BookFlights { get; set; }
        public virtual DbSet<Flight> Flights { get; set; }
        public virtual DbSet<Room> Rooms { get; set; }
        public virtual DbSet<UsersLogin> UsersLogins { get; set; }
    }
}