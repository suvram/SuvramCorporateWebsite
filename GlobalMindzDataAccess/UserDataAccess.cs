using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GlobalMindzModel;

namespace GlobalMindzDataAccess
{
	public class UserDataAccess
	{
		GlobalMindzEntities dbGlobalMindz = new GlobalMindzEntities();

		public User GetUserDetails(string loginName)
		{
			 
			User usr = new User();
			using (var ctx = new GlobalMindzEntities())
			{
				//var courseList = ctx.Database.SqlQuery<Course>("exec GetCoursesByStudentId @StudentId ", idParam).ToList<Course>();
				string qry = string.Format("declare  @LoginName varchar(10); exec pADM_Users_SelectByLoginName @LoginName='{0}'", loginName);
				var theUserList = ctx.Database.SqlQuery<User>(qry).ToList<User>();
				foreach (User u in theUserList)
				{
					usr.UserID = u.UserID;
					usr.UserName = u.UserName;
					usr.Password = u.Password;
					usr.RoleID = u.RoleID;
				}
			}
			
            

			return usr;
		}


		public User GetUserDetails(int userId)
		{
			int UserId = userId;
			User usr = new User();
			try
			{
				var query = (from u in dbGlobalMindz.ADMN_MST_Users
							 where u.UserID == UserId
							 select u).FirstOrDefault();


				if (query != null)
				{
					usr.UserID = query.UserID;
					usr.UserName = query.UserName;
					usr.Password = query.Password;
					usr.RoleID = int.Parse(query.RoleID.ToString());
				}
			}
			catch (Exception ex)
			{
				usr = null;
				throw ex;
			}

			return usr;
		}
	}
}
