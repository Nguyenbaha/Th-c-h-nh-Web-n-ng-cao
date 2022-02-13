while (true) 
        {
                var txt = prompt("Hãy nhập vào một đoạn văn bản: ");
                var max = 0;
                var min = 1000000000;
                var tuNN = '';
                var tuDN = '';

                if (txt != null) 
                {
                    
                        // reg = new RegExp("[ ]+","g");
                    var s = txt.split(' ');
                       
                    if (s.length > 0)
                     {

                            // tìm phần tử độ dài max và min
                        for (var i = 0; i < s.length; i++)
                          {
                            var length = s[i].length;
                            if (length > 0)
                             {
                                if (max < length) max = length;
                                if (min > length) min = length;
                             }
                          }

                        
                          // lấy ra những từ dài nhất và ngắn nhất # null
                        for (var i = 0; i < s.length; i++)
                         {

                            if(s[i].length == max  )
                                 {
                                     if (tuDN.length > 0) tuDN += ", ";
                                     tuDN += s[i];
                                 }

                            if(s[i].length == min && tuNN.indexOf(s[i])== -1) 
                                 {
                                    if (tuNN.length > 0) tuNN += ", ";
                                    tuNN += s[i];
                                 }
                        }

                        }
                        n
                         alert("Từ dài nhất: " + tuDN + "        Từ ngắn nhất: " +tuNN);

                }


                if (!confirm("Bạn có muốn tiếp tục không"))
                    break;

        }