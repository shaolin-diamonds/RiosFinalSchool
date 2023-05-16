using Microsoft.VisualStudio.TestTools.UnitTesting;
using RiosFinalSchool.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RiosFinalSchool.Controllers.Tests
{
    [TestClass()]
    public class InstructorsControllerTests
    {
        [TestMethod()]
        public void AuthUserTest()
        {
            JwtAuthManager controller = new JwtAuthManager("wrongndnotlogin1111!");

            User user = new User
            {
                username = "testusername",
                password = "testpassword!!!"
            };

            var ret = controller.Authenticate(user.username, user.password);

            Assert.IsNull(ret);
        }
    }
}