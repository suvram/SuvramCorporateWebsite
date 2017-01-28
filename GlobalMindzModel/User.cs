using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GlobalMindzModel
{
	public class User : Micro.Objects.Administration.User
	{
		//public int Id { get; set; }

		//public int? RoleID { get; set; }
		//public string UserName { get; set; }

		//public string Email { get; set; }

		//public string Password { get; set; }

		public string LastLoginDateTime { get; set; }

	}
}
