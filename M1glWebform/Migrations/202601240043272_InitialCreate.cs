namespace M1glWebform.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Memoires",
                c => new
                    {
                        IdM = c.Int(nullable: false, identity: true),
                        LibelleM = c.String(nullable: false, maxLength: 200),
                        Description = c.String(maxLength: 1000),
                        DateM = c.DateTime(nullable: false),
                        Note = c.Double(),
                        Verdict = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.IdM);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Memoires");
        }
    }
}
