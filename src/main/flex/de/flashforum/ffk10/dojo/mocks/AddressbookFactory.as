/*
 * Copyright 2010 Florian Salihovic
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package de.flashforum.ffk10.dojo.mocks
{

    import de.flashforum.ffk10.dojo.domain.Addressbook;
    import de.flashforum.ffk10.dojo.domain.contacts.Contact;

    public class AddressbookFactory
    {

        public static function createAddressBook():Addressbook
        {
            var adressbook:Addressbook = new Addressbook();
            adressbook.contacts.contacts.addItem(createContact("Fred", "Flintstone"));
            adressbook.contacts.contacts.addItem(createContact("Barney", "Rubble"));
            return adressbook;
        }

        private static function createContact(firstName:String, lastName:String,
            city:String = "", zipCode:String = "", street:String = ""):Contact
        {
            var contact:Contact = new Contact();
            contact.firstName = firstName;
            contact.lastName = lastName;
            contact.city = city;
            contact.zipCode = zipCode;
            contact.street = street;
            return contact;
        }
    }
}