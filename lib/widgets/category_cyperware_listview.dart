import 'package:cyberwares_awareness/models/category_cyperware_model.dart';
import 'package:cyberwares_awareness/models/detalis_view_cards_model.dart';
import 'package:cyberwares_awareness/widgets/category_cyperware_listview_item.dart';
import 'package:flutter/material.dart';

class CategoryCyperwaresListview extends StatelessWidget {
  const CategoryCyperwaresListview({super.key});

  @override
  Widget build(BuildContext context) {
    const List<CategoryCyperWareModel> categories = [
      CategoryCyperWareModel(
          title: "Malware",
          description:
              "Malware is a (malicious) software intentionally designed to cause damage to a computer or com...",
          image: "assets/images/svgs/1.svg",
          color: Color.fromARGB(255, 225, 105, 40),
          backgroundColor: Color(0xffEC8F5E)),
      CategoryCyperWareModel(
          title: "Phishing",
          description:
              "Phishingis a cyberattack that tries to trick you intorevealing sensitive           information,such as ....",
          image: "assets/images/svgs/2.svg",
          color: Color.fromARGB(255, 232, 154, 53),
          backgroundColor: Color(0xffF3B664)),
      CategoryCyperWareModel(
        title: "SQL Injection Attack",
        description:
            " SQL injection is a code injection technique in which malicious SQL statements are inserted into an entry field for execution...",
        image: "assets/images/svgs/3.svg",
        color: Color.fromARGB(255, 219, 209, 65),
        backgroundColor: Color(0xffF1EB90),
      ),
      CategoryCyperWareModel(
        title: "DOS",
        description:
            'DOS (A Denial of Service) attack is a malicious attempt to make a website or  service unavailable by over whelming ...',
        image: "assets/images/svgs/4.svg",
        color: Color.fromARGB(255, 140, 197, 49),
        backgroundColor: Color(0xff9FBB73),
      ),
      CategoryCyperWareModel(
          title: "Cross Site Scripting (XSS)",
          description:
              "Cross-site Scripting (XSS) is a client-side code injection attack. The attacker aims to execute malicious scripts in a web ...",
          image: "assets/images/svgs/5.svg",
          color: Color.fromARGB(255, 225, 105, 40),
          backgroundColor: Color(0xffEC8F5E)),
      CategoryCyperWareModel(
          title: "Session Hijacking",
          description:
              " occurs when an attacker takes over your internet session. This might happen when you’re shopping online, paying a bill, or ...",
          image: "assets/images/svgs/6.svg",
          color: Color.fromARGB(255, 232, 154, 53),
          backgroundColor: Color(0xffF3B664)),
      CategoryCyperWareModel(
        title: "credential reuse attacks",
        description:
            " Credential reuse attacks occur when an attacker uses a set of stolen credentials, such as ...",
        image: "assets/images/svgs/7.svg",
        color: Color.fromARGB(255, 219, 209, 65),
        backgroundColor: Color(0xffF1EB90),
      ),
      CategoryCyperWareModel(
        title: "social engineering",
        description:
            ' Social engineering is the art of making someone do what you want them to do. It overlaps heavily with academic fields involving psychology, biology, and even mathem...',
        image: "assets/images/svgs/8.svg",
        color: Color.fromARGB(255, 140, 197, 49),
        backgroundColor: Color(0xff9FBB73),
      ),
    ];
    final List<CardsModel> pageCardsList = [
      const CardsModel(
          color: Color(0xffEC8F5E),
          title: 'Malware',
          descrpation:
              'Malware is a (malicious) software intentionally designed to cause damage to a computer or computer network.  The malicious activities include  Deleting files  Encrypting files Gain access of the infected machine  Collecting and sending sensitive data Stopping services  System shutdown etc.Explain different Types of Malware: •Virus: Viruses attach themselves to clean files and infect other clean files. Their intention is to damage a system s core functionality and deleting or corrupting files. They usually appear as an executable file (.exe). •Trojans: This kind of malware disguises itself as legitimate software but has malicious intent. It tends to act discreetly and create backdoors in your security to let other malware in. •Worms: Worms infect entire networks of devices, either local or across the internet, by using network interfaces. It uses each consecutively infected machine to infect others. •Spyware: Spyware is malware designed to spy on you. It hides in the background and takes notes on what you do online, including your passwords, credit card numbers, surfing habits, and more Ransomware: This kind of malware typically locks down your computer and your files, and threatens to erase everything unless you pay a ransom.Adware: Though not always malicious in nature, aggressive advertising software can undermine your security just to serve you ads — which can give other malware an easy way in. Plus, they end up consuming system resources Botnets: Botnets are networks of infected computers that are made to work together under the control of an attacker.RAT: Remote Access Trojan : Type of malware that allows an attacker gain unauthorized remote access of victim machine',
          image: 'assets/images/pngs/001-malware.png'),
      const CardsModel(
          color: Color(0xffF3B664),
          title: 'Phishing',
          descrpation:
              'Phishing is a cyberattack that tries to trick you into revealing sensitive information, such as passwords, bank details, or personal data. There are many types of phishing attacks, such as: ● Spear phishing: A targeted attack that impersonates a trusted source, such as a colleague, a friend, or a company. ● HTTPS phishing: An attack that uses a fake website that looks legitimate, but is designed to steal your information. ● Email phishing: An attack that uses an email that looks authentic, but contains a malicious link or attachment. ● Vishing: An attack that uses a phone call to persuade you to give up your information or money. ● Pharming: An attack that redirects you to a fraudulent website by infecting your computer or network with malware.',
          image: 'assets/images/pngs/002-phishing.png'),
      const CardsModel(
          color: Color(0xffF1EB90),
          title: 'SQL Injection Attack',
          descrpation:
              "SQL injection is a code injection technique in which malicious SQL statements are inserted into an entry field for execution. These SQL statements control a database server behind a web application. By executing malicious statements, the attacker can gain unauthorized access,copy, modify or delete the data.SQL injection is a type of cyber attack where malicious actors exploit vulnerabilities in web applications that use SQL (Structured Query Language) to communicate with databases. In SQL injection attacks, attackers manipulate input fields or parameters in web forms, URLs, or other user-input mechanisms to inject malicious SQL code into the application's database query.Here's how SQL injection works and the potential damage it can cause: Exploiting Vulnerable Input: Attackers identify input fields within a web application, such as search boxes, login forms, or URL parameters, that interact directly with the application's database.Injecting Malicious SQL Code: Attackers craft specially-crafted input strings that include SQL code designed to modify the behavior of the database query. This SQL code is injected into the vulnerable input fields.Executing Unauthorized Database Operations: When the vulnerable input is submitted, the application, if not properly secured, fails to properly validate or sanitize the input. As a result, the injected SQL code is executed by the database server as part of the query.Data Extraction, Modification, or Deletion: Once the SQL injection payload is executed, attackers can perform a variety of unauthorized actions, including: Extracting sensitive data from the database, such as usernames, passwords, credit card numbers, or personal information.Modifying existing data in the database, such as altering user account privileges or changing financial records.Deleting data from the database, which can lead to data loss or disruption of services.Bypassing Authentication: SQL injection attacks can also be used to bypass authentication mechanisms by manipulating SQL queries related to user authentication. This can grant attackers unauthorized access to restricted areas of the application or sensitive information.System Compromise and Further Exploitation: In severe cases, successful SQL injection attacks can lead to the compromise of the entire system hosting the web application. Attackers may gain control over the underlying server, install malware, or escalate privileges to carry out additional attacks on other systems within the network.The damage caused by SQL injection attacks can be severe and wide-ranging, including financial losses, reputational damage, regulatory fines (especially if data protection regulations are violated), and loss of customer trust.",
          image: 'assets/images/pngs/003-sql-injection.png'),
      const CardsModel(
          color: Color(0xff9FBB73),
          title: 'DOS',
          descrpation:
              " A Denial of Service (DoS) attack is a malicious attempt to disrupt the normal functioning of a targeted server, service, or network by overwhelming it with a flood of illegitimate traffic or requests. The objective of a DoS attack is to make the target unavailable to its intended users, rendering it unable to respond to legitimate requests. This can be achieved by various means, including sending excessive traffic, exploiting vulnerabilities in the target's software or infrastructure, or using botnets to coordinate the attack from multiple sources simultaneously.A Distributed Denial of Service (DDoS) attack is a variant of DoS where the attack traffic comes from multiple sources, making it even more difficult to mitigate. DDoS attacks can be A Denial of Service (DoS) attack is a malicious attempt to disrupt the normal functioning of a targeted server, service, or network by overwhelming it with a flood of illegitimate traffic or requests. The objective of a DoS attack is to make the target unavailable to its intended users, rendering it unable to respond to legitimate requests. This can be achieved by various means, including sending excessive traffic, exploiting vulnerabilities in the target's software or infrastructure, or using botnets to coordinate the attack from multiple sources simultaneously.A Distributed Denial of Service (DDoS) attack is a variant of DoS where the attack traffic comes from multiple sources, making it even more difficult to mitigate. DDoS attacks can be executed by infecting and controlling a large number of computers or IoT devices, known as a botnet, or by leveraging open DNS resolvers or amplification techniques to magnify the volume of attack traffic.DoS attacks can have severe consequences, ranging from temporary service disruptions to financial losses, reputational damage, and even legal consequences for the perpetrators. Organizations often implement various mitigation techniques, such as traffic filtering, rate limiting, and the use of specialized DDoS protection services, to defend against these attacks.",
          image: 'assets/images/pngs/005-Denial-of-Service (DoS).png'),
      const CardsModel(
          color: Color(0xffEC8F5E),
          title: "Cross Site Scripting (XSS)",
          descrpation:
              "Cross-site Scripting (XSS) is a client-side code injection attack. The attacker aims to execute malicious scripts in a web browser of the victim by including malicious code in a legitimate web page or web application.A Cross-Site Scripting (XSS) attack occurs when a malicious actor injects malicious scripts into web pages that are viewed by other users. These scripts can be injected into input fields, URLs, or other areas where user input is accepted by a web application. When other users view the affected web pages, their browsers unknowingly execute the malicious scripts, allowing the attacker to steal sensitive information, hijack user sessions, or deface websites.Here's how a Cross-Site Scripting attack works and the potential damage it can cause: Injection of Malicious Scripts: The attacker identifies vulnerable input fields or parameters within a web application, such as search boxes, comment forms, or message boards. They then inject malicious scripts, typically written in JavaScript, into these input fields.Execution of Malicious Scripts: When other users interact with the affected web pages, their browsers interpret and execute the injected malicious scripts within the context of the website. This allows the attacker to carry out various malicious activities, including: Stealing sensitive information: The attacker can steal cookies, session tokens, or other authentication credentials stored in the victim's browser, allowing them to impersonate the victim and access their accounts.Session hijacking: By stealing session tokens or cookies, the attacker can hijack the victim's session and perform actions on behalf of the victim, such as making unauthorized transactions or changing account settings.Defacement or redirection: The attacker can modify the appearance of the web page or redirect users to malicious websites, phishing pages, or malware distribution sites.Keylogging: The attacker can capture keystrokes entered by the user, allowing them to capture sensitive information such as passwords or credit card numbers.Impact on Users and Organizations: The damage caused by Cross-Site Scripting attacks can be significant and varied, including:Financial losses: Attackers can steal financial information, conduct fraudulent transactions, or redirect users to phishing pages to steal additional sensitive information.Reputation damage: Organizations may suffer reputational damage if their websites are defaced or used to distribute malware or phishing attacks.Legal and regulatory consequences: Depending on the nature of the data stolen or the impact of the attack, organizations may face legal liabilities or regulatory fines for failing to protect user data.Loss of customer trust: Users may lose trust in an organization's ability to protect their sensitive information, leading to a loss of customers and business opportunities.",
          image: 'assets/images/pngs/004-Cross-Site Scripting (XSS).png'),
      const CardsModel(
          color: Color(0xffF3B664),
          title: "Session Hijacking",
          descrpation:
              "occurs when an attacker takes over your internet session. This might happen when you are shopping online, paying a bill, or checking your bank balance. Session hijackers usually target browser or web applications, and their aim is to take control of your browsing session to gain access to your personal information and passwords. Session hijackers fool websites into thinking they are you. This type of attack can have serious consequences for application security because it allows attackers to gain unauthorized access to protected accounts (and the data they contain) by masquerading as a legitimate user.Types of session hijacking Types of Session Hijacking: Cross-site scripting A cross-site scripting attack involves cybercriminals exploiting security weak spots in a web server or application. Cross-site scripting involves an attacker injecting scripts into web pages. These cause your web browser to reveal your session key to the attacker so they can take over the session. Session side jacking (also known as session sniffing)In this type of attack, a criminal needs access to a user’s network traffic. They may gain access when the user uses unsecured Wi-Fi or by engaging in man-in-the-middle attacks. In session side jacking, a criminal uses packet sniffing to monitor an internet users network traffic to search for sessions. This allows the attacker to obtain a session cookie and use it to take over the session.Session fixation In a session fixation attack, the criminal creates a session ID and tricks the user into starting a session with it. This might be achieved through sending an email to the user with a link to a login form for the website the attacker wants to access. The user logs in with the fake session ID, giving the attacker a foot in the door. Man-in-the-browser attack This is similar to a man-in-the-middle attack, but the attacker must first infect the victim's computer with a Trojan. Once the victim is deceived into installing malware onto the system, the malware waits for the victim to visit a targeted site. The man-in-the-browser malware can invisibly modify transaction information and can also create additional transactions without the user knowing. Because the requests are initiated from the victim's computer, it is very difficult for the web service to detect that the requests are fake. Predictable sessions token ID Many web servers use a custom algorithm or predefined pattern to generate session IDs. The more predictable a session token, the weaker it is. If attackers can capture several IDs and analyze the pattern, they may be able to predict a valid session ID.(This approach can be compared to a brute force attack.) Impact of session hijacking attack There are many risks associated with not taking steps to prevent session hijacking. Some of these dangers include: Identity theft By gaining unauthorized access to sensitive personal information saved in accounts, attackers can steal a victim  identity beyond the confines of the hacked website or application. Financial theft Through session hijacking, attackers can gain the ability to carry out financial transactions on behalf of the user. This might involve transferring money from a bank account or making purchases with saved payment information. Malware infection If a hacker can steal a user session ID, they may also be able to infect the user computer with malware. This can allow them to gain control of the target computer and steal their data. Denial-of-Service (DoS) attacks A hacker who gains control of a user session could launch a DoS attack against the website or server to which they are connected, disrupting service, or causing the site to crash. Access to additional systems through SSO ,SSO stands for single sign on. Attackers can also gain unauthorized access to additional systems if SSO is enabled, further spreading the potential risk of a session hijacking attack. This risk is particularly important for organizations, many of which now enable SSO for employees. Ultimately, this means that even highly protected systems with stronger authentication protocols and less predictable session cookies, such as those housing financial or customer information, may only be as protected as the weakest link in the entire system. Session hijacking attack examples Zoom bombing During the Covid-19 pandemic, the world turned to video conferencing apps like Zoom. These apps became a popular target of session hijackers, even earning the nickname ‘zoom bombing’. There were news reports of session hijackers joining private video sessions, in some cases shouting profanities, hateful language and sharing pornographic images. In response, Zoom introduced greater privacy protections to minimize the risk.Slack In 2019, a researcher on a bug bounty platform identified a vulnerability in Slack which allowed attackers to force users into fake session redirects so they could steal their session cookies. This gave attackers access to any data shared within Slack(which for many organizations, can be significant). Slack was quick to respond and patched the vulnerability within 24 hours of the researcher highlighting it.GitLab In 2017, a security researcher identified a vulnerability in GitLab where user session tokens were available directly in the URL. Further investigation revealed that GitLab also used persistent session tokens that never expired, which meant that once an attacker obtained one session token, they could use it without the worry of expiration. This combination of open exposure and persistent tokens presented a serious risk, opening users to various severe attacks through session hijacking via a brute force attack. GitLab fixed the vulnerability by changing how it used and stored those tokens.",
          image: 'assets/images/pngs/006-Session Hijacking.png'),
      const CardsModel(
          color: Color(0xffF1EB90),
          title: 'credential reuse attacks',
          descrpation:
              'Credential reuse attacks work by exploiting the fact that many users reuse the same username and password combination across multiple systems and applications. An attacker may obtain a user  credentials through various means, such as phishing attacks, social engineering, or the use of malware. Once the attacker has obtained a user credentials, they will try to use those credentials to log in to other systems or applications. The attacker may use automated tools that can test multiple systems and applications for valid credentials until they find one that works. The impact of credential reuse attacks Credential reuse attacks can have severe consequences for individuals and organizations. If an attacker gains access to a system or application, they may be able to steal sensitive data or damage the system, causing a loss of productivity or revenue. In some cases, the attacker may use the system to launch further attacks on other systems and applications.',
          image: 'assets/images/pngs/007-Credential Reuse.png'),
      const CardsModel(
          color: Color(0xff9FBB73),
          title: "social engineering",
          descrpation:
              'Social engineering is the art of making someone do what you want them to do. It overlaps heavily with academic fields involving psychology, biology, and even mathematics! In cybersecurity, social engineering is the use of deception to manipulate individuals into divulging confidential or personal information that could then be used for fraudulent purposes. Basically, how could someone trick another person into giving up something that is private? Social engineering attacks are the dark art of using social interactions to trick someone into making a security mistake. Social engineering tactics can be employed in-person, over the phone, or online through websites, email, and social media. Once an attacker can make an individual perform a certain action, then the attacker can gain access to sensitive systems, steal assets, or advance a more complex attack. This notion of focusing on persuading or tricking people may sound unreliable. But, there are many case studies that show social engineering is an incredibly powerful technique for attackers. EXAMPLES Effective social engineering tactics can result in defrauding vulnerable individuals of their savings through scams and confidence tricks. For organizations with physical buildings, social engineering also includes tailgating, or closely following, individuals in order to gain access to secure areas. Why does social engineering work? Social engineering works because humans are imperfect. There are two key elements to this: our decisions are irrational and our decision making is flawed. Let’s look at each in greater detail.Irrational behavior We can all exhibit irrational behavior as shown by making decisions that do not further ourlong-term interests. If everyone was focused and logical, then we would not have vices. For instance, no one would play the lottery and we would eat healthy all the time. This is very far from the case. In social engineering, drivers for short term gratification or greed can be utilized to manipulate a target. These targets are putting themselves at risk and often committing crimes unknowingly. EXAMPLES This is best shown when criminals persuade young adults to act as money launderers for gangs. There are also many other get-rich-quick schemes online. The victims in this case are baited into the scheme with false promises.There are also cases where idleness is a great asset for social engineering. Taking shortcuts and the tendency to avoid rules are quite effective to use as a social engineering tactic on a target.EXAMPLES Within certain organizations, employees might skip a long business process like verifying caller identities or getting the right levels of approvals to grant access rights. Flawed decision making Human decision making varies greatly throughout the day and depends on changing circumstances. For instance, the colors on display in a room, the presence of other people, the amount of noise, and the temperature all have a measurable, biological impact on individuals and change their decision-making processes. Attackers benefit from affecting a target’s decision making to achieve a result. EXAMPLES Attackers use time restrictions to create a sense of urgency. In addition, attackers may confuse a target by impersonating a trusted authority figure or even pretend to be a potential love interest. When an attacker builds up a false reason to engage with a target this tactic can be labelled as pretexting. All these factors impact a target  ability to make a good decision or even identify they are being manipulated in the first place. ',
          image: 'assets/images/pngs/008-social-engineering.png'),
    ];
    return SizedBox(
      height: 236,
      child: ListView.builder(
          clipBehavior: Clip.none,
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: CategoryCyperwaresListviewItem(
                category: categories[index],
                c1: pageCardsList[index],
              ),
            );
          }),
    );
  }
}
