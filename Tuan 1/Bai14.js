       
        
           <!--  code here -->

        function thuchien()
        {

            var cc = parseFloat(document.getElementById("txtchieucao").value);
            var cn = parseFloat(document.getElementById("txtcannang").value);


            if (cc == ''||  cc==null || cc==' '||cc.length==0 || isNaN(cc) || cc < 1) 
            {
                alert("Bạn phải nhập nhiều cao ");
                document.getElementById('txtchieucao').focus();
                return;
            }
            else
            if (cn == ''|| cn == null || cn == ' ' || cn.length == 0 || isNaN(cn) ||cn < 1)
              {
                alert("Bạn phải nhập cân nặng ");
                document.getElementById('txtcannang').focus();
                return;
             }

            //var  kq = (cn / (cc * cc));
            var kq = res(cn, cc);
            var hienthi = document.getElementById('reply');
            hienthi.innerHTML = "BMI của bạn là " + "<b>" + kq +"</b>" +", bạn ở mức <i>"+xacdinhtieuchuan(kq)+"</i>";
        }

        function res(cn, cc)
        {
            return (cn / (cc * cc));
        }

        function xacdinhtieuchuan(kq) {
            switch (kq < 18.5) {
                case true: return "Dưới chuẩn"; break;
                case false: switch (kq < 25) {
                    case true: return "Chuẩn"; break;
                    case false: switch (kq < 30) {
                        case true: return "Thừa cân"; break;
                        case false: switch (kq < 40) {
                            case true: return "Béo , cần giảm cân"; break;
                            case false: switch (kq < 40) {
                                case true: return "Rất béo , cần giảm cân ngay"; break;
                                case false: return "Chưa cập nhật dữ liệu"; break;

                            }
                        }

                    }
                }
                    break;
            }
        }
        
        
    function huy()
             {
                document.getElementById('txtchieucao').value = "";
                document.getElementById('txtcannang').value = "";
                document.getElementById('reply').innerHTML = "";
            }