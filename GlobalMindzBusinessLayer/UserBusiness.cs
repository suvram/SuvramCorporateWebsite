using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
 using GlobalMindzModel;
using GlobalMindzDataAccess;
using System.Data;

namespace GlobalMindzBusinessLayer
{
	public static class UserBusiness
	{
		
			

		public static User GetUserDetails(int userId)
		{
			UserDataAccess d = new UserDataAccess();

			User u = new User();
			u = d.GetUserDetails(userId);
			
			return u;
		}

		public static User GetUserDetails(string loginName)
		{
			UserDataAccess d = new UserDataAccess();
			User u = new User();
			u = d.GetUserDetails(loginName);
			return u;
		}
	}
}
