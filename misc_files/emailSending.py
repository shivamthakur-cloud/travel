import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart


def verify_link_mail(receiver_mail, link, name):
    msg = MIMEMultipart()
    msg['From'] = 'Western Himalayas'
    msg['To'] = receiver_mail
    msg['Subject'] = 'Verify E-Mail'

    body = 'Hello Mr/Ms.{}, \nYour verify link is: {}.\n Do verify if its you, else Report!'.format(name, link)

    message = MIMEText(body, 'plain')

    msg.attach(message)
    text = msg.as_string()

    server = smtplib.SMTP('smtp.gmail.com', 587)
    server.starttls()
    server.login('shivawork.py@gmail.com', 'h@teEY0U')
    server.sendmail('shivawork.py@gmail.com', receiver_mail, text)
    server.quit()
    print('eMail sent!')


# verify_link_mail('shivakalyan3243@gmail.com', 'THIS-IS-A-SAMPLE-VERIFY-LINK(DO NOT CLICK ON THIS)', 'Shiva')
