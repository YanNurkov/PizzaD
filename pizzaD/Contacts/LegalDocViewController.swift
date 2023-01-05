//
//  LegalDocViewController.swift
//  pizzaD
//
//  Created by Ян Нурков on 01.12.2022.
//

import UIKit

class LegalDocViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(text)
        makeConstraints()
        view.backgroundColor = .white
        navigationItem.title = "Legal documents"
    }
    
    
    func makeConstraints() {
        self.text.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.top.equalTo(view.snp.top).offset(100)
            make.bottom.equalToSuperview().offset(-16)
        }
    }

    private lazy var text: UITextView = {
        let obj = UITextView()
        obj.font = .systemFont(ofSize: 15)
        obj.textAlignment = .left
        obj.isEditable = false
        obj.backgroundColor = .white
        obj.text = "This document, in accordance with Article 437 of the Civil Code of the Russian Federation, is a public offer (hereinafter referred to as the “Offer”), which is addressed to an unlimited circle of individuals who have reached the age of majority, who act as entrepreneurs in civil circulation (hereinafter referred to as “Users”), a proposal in the person of the self-employed citizen Nurkov Yan Vladislavovich “Cred.” - “Company”), location address: 143442, Moscow region, Saburovo village, st. Sadovaya 12, conclude (consider yourself to be) a license agreement on the provision of a simple (non-exclusive) license (hereinafter - the “Agreement”) for the CrewNotes mobile application (hereinafter - the “Mobile Application”) on the conditions set forth below that are the essential terms of the agreement. \n Installing a mobile application on a personal computer, mobile phone, communicator, smartphone (hereinafter referred to as the “subscriber device”), as well as the beginning of using the mobile application in any form, is recognized as acceptance of the offer in accordance with Article 438 of the Civil Code of the Russian Federation, which means the user is completely unconditionally accepted without any withdrawal or restrictions on the conditions of connection. \n If the User does not agree with this Agreement, as well as the conditions, provisions and rules of using the mobile application, including not willing or not ready to comply with them, then he should not install the mobile application and must immediately remove it / any of its components from the subscriber device, stopping its use in any form. Using a mobile application on other conditions is not allowed. Before installing a mobile application, the user undertakes to familiarize himself with the offer. In case of disagreement with the terms of the agreement, in general or in any part thereof, the user is not entitled to use the mobile application. \n Offer, as well as all subsequent changes or additions to it, which can be made by the company unilaterally, without any special notification of the user, are placed in the telegram channel (hereinafter - the “channel”), unless otherwise provided by the new edition of the offer. The user undertakes to independently monitor any possible changes. \n 1. Subject of the agreement \n 1.1. The company undertakes to provide the User with the right to use a mobile application (simple (non-exclusive) license), the exclusive right to which is determined in accordance with clause 5.1 of the Agreement, without granting the User the right to transfer to third parties, to use a mobile application on a subscriber device that the User owns or disposes of legally. The company has the right at any time to cancel the right granted to the user without additional notification. \n 1.2. The scope of the right to use a mobile application provided to the user includes the use of a mobile application for its intended purpose, including the installation and reproduction of a mobile application on an unlimited number of subscriber devices, provided that the combination and contents of the mobile application are kept unchanged compared to how they are provided for use by the company. \n 1.3. The territory of this Agreement is limited by the Russian Federation. \n 1.4. The validity period of a simple (non-exclusive) license to use a mobile application is equal to the validity of the exclusive right to a mobile application. Upon termination or termination of the Agreement, the User loses the right to use the mobile application. The company has the right at any time to terminate this Agreement without explanation, having terminated the use of the mobile application by the User. \n 2. User registration \n 2.1. After installing the mobile application on a subscriber device, but before starting its use, the user must register, which is a procedure (set of procedures) based on the automated processing by the copyright holder of information provided by the User by filling out the corresponding form, on the basis of which the user account is generated, which allows the user to be identified separately from other users. \n 2.2. When registering, the User provides the information necessary to create his account, including, among other things: a unique password, email address. The company at any time, without notifying the User, reserves the right, but is not required to check the data specified by the User during registration, which does not remove the User from any risks associated with indicating inaccurate, and (or) incomplete, and (or) inaccurate information. \n 2.3. The user does not have the right to register more than one account. Any account registered by a user who already has an account is considered invalid. \n The company reserves the right to block or delete a user account if the company considers that it directly or indirectly violates the provisions of the agreement, harms the company's reputation, violates the rights and / or insults other users. \n 2.4. The user independently generates a password for access to his account. The user is exclusively responsible for protecting his password. The user undertakes not to disclose his password to any third parties, therefore, bears sole responsibility for actions performed through his account, regardless of whether they were authorized by him. The User undertakes to immediately notify the Company of any case of unauthorized use of his account, after which the Company blocks such an account until all circumstances are clarified. \n 2.5. User identification when working with a mobile application is based on a unique number generated automatically and assigned to the user during registration. However, this number is used by the company exclusively for internal purposes, the user has the right to assign an arbitrary name for his account, as well as create a password necessary for access to it. \n 3. Prohibited ways of using \n 3.1. Unless otherwise specified in the text of the agreement, the user cannot without prior written consent of the company: modify, embed a mobile application in other software or combine with it, create a revised version of any part of the mobile application; sell, issue licenses (sublicenses), rent, transfer, transfer, pledge, share rights under this agreement to third parties; use, copy, distribute or reproduce a mobile application in the interests of third parties, as well as for commercial purposes; promulgate the results of any comparative analysis regarding the mobile application, use the mentioned results for any software development activities; Modify, disassemble, decompile, disassemble into components of codes, process or improve a mobile application, try to get the source text of a mobile application program, and otherwise disrupt its normal course of operation. Copy, reproduce, process, distribute, place in the public domain (publication) on the Internet, use any materials posted in the mobile application in the media and / or commercial purposes, including those extracted from databases included in the mobile application, and also obtained by copying the results of data processing using the mobile application, as well as such materials of products (with additions, reductions and other processing). \n 3.2. The rights and methods of using a mobile application that are explicitly not provided / not permitted to the User by agreement are considered not granted / prohibited by the Company. \n 4. gratuitous \n 4.1. This Agreement does not provide for the recovery of any one-time or periodic payments from the User for the right to use the mobile application. A simple (non-exclusive) license is granted free of charge. The user is notified that when installing a mobile application on a subscriber device, an organization providing Internet services may be charged for using the Internet according to the tariff. \n 5. Exclusive law \n 5.1. The exclusive right to a mobile application as a whole and included in its composition or computer programs, databases, software and source codes, cartographic, reference and information, audiovisual, textual and other text materials, images and other objects of copyright and related rights, as well as objects of patent rights, trading signs, commercial signs, commercial signs, commercial signs, commercial signs, commercial signs, commercial signs, commercial signs, commercial signals The proprietary names, as well as other components of the mobile application and (regardless of whether they are part of or are additional components, and whether they can be removed from their composition and use independently) are protected in accordance with part IV of the Civil Code of the Russian Federation and belong to the company (or its affiliate, or other an affiliate with a license for a mobile application with the right of sublicensing. \n 5.2. Violation of the integrity of a mobile application, violation of the protection systems of a mobile application, as well as other actions that violate the exclusive right to a mobile application are not allowed and entail civil, administrative or criminal liability in accordance with the legislation of the Russian Federation, including the obligation of the decision court on the recognition of the right, on the suppression of actions that violate the right or create a threat of its violation, on compensation for losses, on the publication of a court decision on a violation, indicating the actual copyright holder, on compensation for losses or payment of compensation. \n 6. Update and support \n 6.1. The company under this agreement is not required to provide the User with support, service, updates, modifications and new versions of the mobile application. However, it can from time to time release updates for a mobile application, and, including, automatically, by electronic communication, update its version installed on a subscriber device. By default, the User agrees to such an automatic update, and also accepts that the conditions and terms of this agreement will be valid for the specified updates. \n 7. Lack of guarantees and liability \n 7.1. The mobile application is provided on the basis of “as is”, and therefore the user is not provided with any guarantees that the mobile application will meet the requirements of the user, is provided continuously, quickly, reliably and without errors, the results that can be obtained using the mobile application will be accurate and reliable. If the mobile application contains any software for third parties, such software is supplied without quality guarantees, and its use is regulated by the conditions and restrictions established by the mentioned third parties. The company is not responsible for delays, interruptions in operation and the inability to fully use a mobile application that occurs directly or indirectly due to the action or inaction of third parties and / or inoperability of information channels (Internet) outside the company's own resources. The user agrees that for the installation and operation of a mobile application, the user needs to use software (web browsers, operating systems, etc.) and equipment (subscriber devices, network equipment, etc.), manufactured and provided by third parties, and the company cannot be responsible for the quality of their work. The user independently carries all risks associated with the use of a mobile application. \n 8. Limited liability \n 8.1. The company is not liable either by virtue of the contract or because of an offense (including negligence), as well as in other cases to the user or third parties for any damage or loss (taking into account indirect, actual, subsequent), including, among other things, any damage or loss in relation to income from commercial activities, business reputation, damaged or business incurred by one or another person due to or in connection with the use of a mobile application, even if the company became aware of the possibility of such damage. \n 8.2. If, despite the terms of this Agreement, the Company is recognized as responsible for the damage specified in clause 7.1 of this Agreement, as well as for any other damage, the amount of compensation will not exceed ten (10) US dollars or an amount in any other currency equivalent to this value. \n 9. Guarantee against losses \n 9.1. The User is independent of compliance with the use of mobile application of the requirements of the current legislation of the Russian Federation, as well as all the rights and legitimate interests of third parties. If third parties present claims to the company caused by the actions (inaction) of the user when using the mobile application, the user will independently resolve the disputes with third parties, and also reimburse the losses and expenses of the company upon its first request. At the same time, the User undertakes to protect the interests of the Company (without any authority), relieve it of liability, protect it from causing damage due to any claims and obligations arising from actions or inaction of the User. \n 10. Informing \n 10.1. The company has the right to inform the User about the procedure and methods of using the mobile application, about the marketing, advertising and other events, about the conditions for the acquisition and consumption of third-party services using a mobile application, by sending messages, including those containing advertising, to a subscriber device, including using a communication network, including a mobile, available, using a mobile device. The user also agrees to receive service short text messages necessary for implementing the functionality of a mobile application or the purpose of its use. \n 11. Confidentiality and protection of personal information \n 11.1. The company undertakes to respect the rights of users to non-disclosure and the safety of personal information transmitted by the company (received by the company). In any case, such information is recognized as confidential, and the company will take sufficient measures necessary to protect it from unauthorized access to it by third parties, based on standard industry technologies and methods. Among other methods, the information transmitted by the user is protected using a firewall, encrypted protocol (SSL) and encrypted data. However, the company cannot guarantee absolute data protection. The user must keep secret the information necessary to access his account, and other information about it, it is also recommended to change the login password from time to time. \n 11.2. Using a mobile application, including when registering an account, the User agrees that the User’s personal data will be processed by the Company, its affiliates, contractors, agents, employees, both with and without automation. A company can collect personal information voluntarily and consciously provided by users during the creation of an account, if any is necessary for using a mobile application, as well as during such use, including an email address. The user is warned that the company can collect information about the location of the user, including using GPS, in order to improve the quality of service, but the user does not mind this. The company can use personal information to: (i) provide services to the user, including in order to provide the right to use by a mobile application; (ii) send messages to users; (iii) provide users with support; (IV) Send promotional materials for the target audience. \n 11.3. The company undertakes not to disclose any personal information received from the user. However, the company will be entitled to disclose similar information in the following cases: (a) to comply with the requirements of the applicable law, decision, trial, subpoena or government requirements; (b) to ensure control over the implementation of this Agreement; (c) to detect, prevent or resolve issues related to fraud, security or technical aspects; (d) to respond to user support requests; (e) to respond to claims that this or that information content violates the rights of third parties; (f) to respond to claims that contact information (for example, name, address, etc.) of a third party was published or transmitted without her consent or as an insult; (g) to protect the rights, property or security of the company, other users or the general public; (h) if the company changes the management system, including cases of mergers, absorption or purchase of all property of the company or a significant part of it; (k) so that the user can use mobile applications most efficiently and rationally; (l) according to the clearly expressed prior permission of the user. \n 11.4. A company can collect anonymous (impersonal) information that does not specifically apply to the user, but provided to them. Such information includes any undisguised information that becomes available to the company as a result of using the user of a mobile application, including data on identifying the user's browser, as well as the operating system, the procedure for visiting pages by the user, the time and date of connection of the user, etc. This information is collected for statistics and is used to improve the quality of user service, as well as improvements to the interface of the mobile application. In order to avoid misunderstandings, the company can transmit and disclose information defined in this paragraph to third parties at its own discretion. \n 11.5. If the user wants to block or clarify the personal information transmitted to the copyright holder, or stop the processing of the company, then he can contact the company directly at its official location specified in this agreement, also through a mobile application. The user is warned that the termination of the processing of his personal information of the company may result in the termination of the right to use by a mobile application. The copyright holder has the right, at his discretion, at any time without explanation, to stop processing the user's personal information. \n 11.6. Unless otherwise specified with the user, the company does not process the special categories of personal data of the User, nor does it cross-border transfer of his personal data. \n 12. Description of the mobile application \n 12.1. A mobile application is an independent software product that includes a program code (object and source code), documentation, descriptions, other text, sound, visual, graphic and video materials, images, databases and other intellectual property designed for operation on mobile computer and telecommunication devices that comply with technical requirements installed. \n 12.2. The operation of the mobile application is built in a playful way on the principle of a social network. \n 12.3. With all the necessary information, including information about the company, the list and description of the services provided by the company, the procedure and conditions for the provision of these services, as well as any other information that the company must, by virtue of the applicable law or consider it necessary to provide, the user has the right to familiarize himself with the relevant pages of the mobile application, as well as in the channel at the following address: https://t.me/crewnotesApp \n 12.4. The company will in no way bear any responsibility to the user for the obligations of its partners and customers. No offers placed by partners and customers of the company, including in the mobile application, do not create any rights and obligations for the company. The company does not guarantee the accuracy of information posted in a mobile application on behalf of partners, nor is it its distributor. \n 13. Complaints \n 13.1. The user can send complaints and feedback on the operation of the mobile application to the following address of the company: https://t.me/crewnotesApp, but the company does not guarantee that it will respond in writing. \n 13.2. The user has the right to notify the company in the manner established in clause 13.1 of this Agreement about the violation of the company by partners of their obligations provided for by the loyalty programs implemented by them, as well as marketing shares."
        return obj
    }()

}
