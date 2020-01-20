import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart


def verify_link_mail(receiver_mail, link, name):
    msg = MIMEMultipart()
    msg['From'] = 'Travel Verification Mail'
    msg['To'] = receiver_mail
    msg['Subject'] = 'Verify E-Mail'

    body = 'Hello Mr/Ms.{}, Your verify link is: {}'.format(name, link)

    message = MIMEText(body, 'plain')

    msg.attach(message)
    text = msg.as_string()

    server = smtplib.SMTP('smtp.gmail.com', 587)
    server.starttls()
    server.login('shivawork.py@gmail.com', 'h@teEY0U')
    server.sendmail('shivawork.py@gmail.com', receiver_mail, text)
    server.quit()


# verify_link_mail('shivamthaur7172@gmail.com', 'vnnnvnnvnvjfj3uuhuhbhbrrjrb', 'Shivam')
