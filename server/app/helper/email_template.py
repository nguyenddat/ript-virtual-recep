def get_create_appointment_template():
    return """
        <!DOCTYPE html>
        <html>
        <head>
            <meta charset="UTF-8">
            <style>
                body {{
                    font-family: Arial, Helvetica, sans-serif;
                    line-height: 1.6;
                    color: #333333;
                    max-width: 600px;
                    margin: 0 auto;
                    padding: 20px;
                }}
                .header {{
                    background-color: #4CAF50;
                    color: white;
                    padding: 20px;
                    border-radius: 5px 5px 0 0;
                    text-align: center;
                }}
                .content {{
                    background-color: #f9f9f9;
                    padding: 20px;
                    border: 1px solid #e0e0e0;
                    border-radius: 0 0 5px 5px;
                }}
                .appointment-info {{
                    margin: 20px 0;
                    background-color: white;
                    padding: 15px;
                    border-radius: 5px;
                    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
                }}
                .info-row {{
                    margin: 10px 0;
                    border-bottom: 1px solid #eee;
                    padding-bottom: 8px;
                }}
                .label {{
                    font-weight: bold;
                    color: #4CAF50;
                    width: 150px;
                    display: inline-block;
                }}
                .status-new {{
                    background-color: #4CAF50;
                    color: white;
                    padding: 3px 8px;
                    border-radius: 3px;
                    font-size: 0.9em;
                }}
                .footer, .signature {{
                    margin-top: 20px;
                    padding-top: 20px;
                    border-top: 2px solid #eee;
                    color: #666;
                }}
            </style>
        </head>
        <body>
            <div class="header">
                <h2>THÔNG BÁO LỊCH HẸN MỚI</h2>
            </div>
            
            <div class="content">
                <p>Kính gửi <strong>{}</strong>,</p>
                
                <p>Một lịch hẹn mới vừa được tạo với thông tin chi tiết như sau:</p>
                
                <div class="appointment-info">
                    <div class="info-row">
                        <span class="label">Người đặt hẹn:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Thời gian:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Người được đặt hẹn:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Mục đích:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Ghi chú:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Trạng thái:</span> 
                        <span class="status-new">Chờ xác nhận</span>
                    </div>
                </div>

                <div class="footer">
                    <p>Quý vị xin vui lòng kiểm tra thông tin và phản hồi về lịch hẹn này.</p>
                    
                    <div class="signature">
                        <p>Trân trọng,<br>
                        <strong>Ban Quản Lý</strong><br>
                        <small>Hệ thống quản lý lịch hẹn</small></p>
                    </div>
                </div>
            </div>
        </body>
        </html>
        """
        
def get_cancel_appointment_template():
    return """
        <!DOCTYPE html>
        <html>
        <head>
            <meta charset="UTF-8">
            <style>
                body {{
                    font-family: Arial, Helvetica, sans-serif;
                    line-height: 1.6;
                    color: #333333;
                    max-width: 600px;
                    margin: 0 auto;
                    padding: 20px;
                }}
                .header {{
                    background-color: #F44336;
                    color: white;
                    padding: 20px;
                    border-radius: 5px 5px 0 0;
                    text-align: center;
                }}
                .content {{
                    background-color: #f9f9f9;
                    padding: 20px;
                    border: 1px solid #e0e0e0;
                    border-radius: 0 0 5px 5px;
                }}
                .appointment-info {{
                    margin: 20px 0;
                    background-color: white;
                    padding: 15px;
                    border-radius: 5px;
                    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
                }}
                .info-row {{
                    margin: 10px 0;
                    border-bottom: 1px solid #eee;
                    padding-bottom: 8px;
                }}
                .label {{
                    font-weight: bold;
                    color: #F44336;
                    width: 150px;
                    display: inline-block;
                }}
                .status-cancelled {{
                    background-color: #F44336;
                    color: white;
                    padding: 3px 8px;
                    border-radius: 3px;
                    font-size: 0.9em;
                }}
                .footer, .signature {{
                    margin-top: 20px;
                    padding-top: 20px;
                    border-top: 2px solid #eee;
                    color: #666;
                }}
            </style>
        </head>
        <body>
            <div class="header">
                <h2>THÔNG BÁO HỦY LỊCH HẸN</h2>
            </div>
            
            <div class="content">
                <p>Kính gửi <strong>{}</strong>,</p>
                
                <p>Chúng tôi xin thông báo rằng lịch hẹn dưới đây đã bị hủy:</p>
                
                <div class="appointment-info">
                    <div class="info-row">
                        <span class="label">Người đặt hẹn:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Thời gian:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Mục đích:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Ghi chú:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Trạng thái:</span> 
                        <span class="status-cancelled">Đã Hủy</span>
                    </div>
                </div>

                <div class="footer">
                    <p>Chúng tôi rất lấy làm tiếc về sự bất tiện này. Nếu quý vị có câu hỏi hoặc cần hỗ trợ, xin vui lòng liên hệ với chúng tôi.</p>
                    
                    <div class="signature">
                        <p>Trân trọng,<br>
                        <strong>Ban Quản Lý</strong><br>
                        <small>Hệ thống quản lý lịch hẹn</small></p>
                    </div>
                </div>
            </div>
        </body>
        </html>
        """
    
def get_update_appointment_template():
    return """
        <!DOCTYPE html>
        <html>
        <head>
            <meta charset="UTF-8">
            <style>
                body {{
                    font-family: Arial, Helvetica, sans-serif;
                    line-height: 1.6;
                    color: #333333;
                    max-width: 600px;
                    margin: 0 auto;
                    padding: 20px;
                }}
                .header {{
                    background-color: #FF9800;
                    color: white;
                    padding: 20px;
                    border-radius: 5px 5px 0 0;
                    text-align: center;
                }}
                .content {{
                    background-color: #f9f9f9;
                    padding: 20px;
                    border: 1px solid #e0e0e0;
                    border-radius: 0 0 5px 5px;
                }}
                .appointment-info {{
                    margin: 20px 0;
                    background-color: white;
                    padding: 15px;
                    border-radius: 5px;
                    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
                }}
                .info-row {{
                    margin: 10px 0;
                    border-bottom: 1px solid #eee;
                    padding-bottom: 8px;
                }}
                .label {{
                    font-weight: bold;
                    color: #FF9800;
                    width: 150px;
                    display: inline-block;
                }}
                .status-updated {{
                    background-color: #FF9800;
                    color: white;
                    padding: 3px 8px;
                    border-radius: 3px;
                    font-size: 0.9em;
                }}
                .changes {{
                    background-color: #FFF3E0;
                    padding: 10px;
                    border-radius: 5px;
                    margin-top: 15px;
                }}
                .footer, .signature {{
                    margin-top: 20px;
                    padding-top: 20px;
                    border-top: 2px solid #eee;
                    color: #666;
                }}
            </style>
        </head>
        <body>
            <div class="header">
                <h2>THÔNG BÁO CẬP NHẬT LỊCH HẸN</h2>
            </div>
            
            <div class="content">
                <p>Kính gửi <strong>{}</strong>,</p>
                
                <p>Chúng tôi xin thông báo rằng lịch hẹn của quý vị vừa được cập nhật:</p>
                
                <div class="appointment-info">
                    <div class="info-row">
                        <span class="label">Người đặt hẹn:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Người được đặt hẹn:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Mục đích:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Ghi chú:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Trạng thái:</span> 
                        <span class="status-updated">{}</span>
                    </div>
                </div>

                <div class="footer">
                    <p>Quý vị vui lòng kiểm tra thông tin chi tiết và phản hồi nếu có bất kỳ câu hỏi nào.</p>
                    
                    <div class="signature">
                        <p>Trân trọng,<br>
                        <strong>Ban Quản Lý</strong><br>
                        <small>Hệ thống quản lý lịch hẹn</small></p>
                    </div>
                </div>
            </div>
        </body>
        </html>
        """
def get_class_schedule_template():
    return """
        <!DOCTYPE html>
        <html>
        <head>
            <meta charset="UTF-8">
            <style>
                body {{
                    font-family: Arial, Helvetica, sans-serif;
                    line-height: 1.6;
                    color: #333333;
                    max-width: 600px;
                    margin: 0 auto;
                    padding: 20px;
                }}
                .header {{
                    background-color: #2196F3;
                    color: white;
                    padding: 20px;
                    border-radius: 5px 5px 0 0;
                    text-align: center;
                }}
                .content {{
                    background-color: #f9f9f9;
                    padding: 20px;
                    border: 1px solid #e0e0e0;
                    border-radius: 0 0 5px 5px;
                }}
                .schedule-info {{
                    margin: 20px 0;
                    background-color: white;
                    padding: 15px;
                    border-radius: 5px;
                    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
                }}
                .info-row {{
                    margin: 10px 0;
                    border-bottom: 1px solid #eee;
                    padding-bottom: 8px;
                }}
                .label {{
                    font-weight: bold;
                    color: #2196F3;
                    width: 150px;
                    display: inline-block;
                }}
                .footer, .signature {{
                    margin-top: 20px;
                    padding-top: 20px;
                    border-top: 2px solid #eee;
                    color: #666;
                }}
            </style>
        </head>
        <body>
            <div class="header">
                <h2>THÔNG BÁO LỊCH HỌC MỚI</h2>
            </div>
            
            <div class="content">
                <p>Kính gửi <strong>{}</strong>,</p>
                
                <p>Dưới đây là lịch học mới của bạn:</p>
                
                <div class="schedule-info">
                    <div class="info-row">
                        <span class="label">Tên lớp học:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Thời gian:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Giảng viên:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Địa điểm:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Ghi chú:</span> 
                        <span>{}</span>
                    </div>
                </div>

                <div class="footer">
                    <p>Vui lòng kiểm tra lại thông tin và liên hệ với chúng tôi nếu có bất kỳ thắc mắc nào.</p>
                    
                    <div class="signature">
                        <p>Trân trọng,<br>
                        <strong>Ban Quản Lý</strong><br>
                        <small>Hệ thống quản lý học tập</small></p>
                    </div>
                </div>
            </div>
        </body>
        </html>
        """
def get_teaching_schedule_template():
    return """
        <!DOCTYPE html>
        <html>
        <head>
            <meta charset="UTF-8">
            <style>
                body {{
                    font-family: Arial, Helvetica, sans-serif;
                    line-height: 1.6;
                    color: #333333;
                    max-width: 600px;
                    margin: 0 auto;
                    padding: 20px;
                }}
                .header {{
                    background-color: #9C27B0;
                    color: white;
                    padding: 20px;
                    border-radius: 5px 5px 0 0;
                    text-align: center;
                }}
                .content {{
                    background-color: #f9f9f9;
                    padding: 20px;
                    border: 1px solid #e0e0e0;
                    border-radius: 0 0 5px 5px;
                }}
                .schedule-info {{
                    margin: 20px 0;
                    background-color: white;
                    padding: 15px;
                    border-radius: 5px;
                    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
                }}
                .info-row {{
                    margin: 10px 0;
                    border-bottom: 1px solid #eee;
                    padding-bottom: 8px;
                }}
                .label {{
                    font-weight: bold;
                    color: #9C27B0;
                    width: 150px;
                    display: inline-block;
                }}
                .footer, .signature {{
                    margin-top: 20px;
                    padding-top: 20px;
                    border-top: 2px solid #eee;
                    color: #666;
                }}
            </style>
        </head>
        <body>
            <div class="header">
                <h2>THÔNG BÁO LỊCH GIẢNG DẠY MỚI</h2>
            </div>
            
            <div class="content">
                <p>Kính gửi <strong>{}</strong>,</p>
                
                <p>Dưới đây là lịch giảng dạy mới của bạn:</p>
                
                <div class="schedule-info">
                    <div class="info-row">
                        <span class="label">Tên giảng viên:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Khóa học:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Thời gian:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Địa điểm:</span> 
                        <span>{}</span>
                    </div>
                    <div class="info-row">
                        <span class="label">Ghi chú:</span> 
                        <span>{}</span>
                    </div>
                </div>

                <div class="footer">
                    <p>Vui lòng kiểm tra lại thông tin và liên hệ với chúng tôi nếu có bất kỳ thắc mắc nào.</p>
                    
                    <div class="signature">
                        <p>Trân trọng,<br>
                        <strong>Ban Quản Lý</strong><br>
                        <small>Hệ thống quản lý giảng dạy</small></p>
                    </div>
                </div>
            </div>
        </body>
        </html>
        """