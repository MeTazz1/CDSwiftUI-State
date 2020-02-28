# CDSwiftUI-State
A comprehensive guide to @State properties and their usage.

One of the biggest challenge when starting SwiftUI is to understand how it works and all its keywords. 

"SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs." - Apple. 

Now, before it becomes "simple", we need to understand its principles and logic. 

----------------------------

This project demonstrates the -@State- keyword. 
Citing the Apple's documentation, @State is a property wrapper type that can read and write a value managed by SwiftUI. Super important: "read and write a value managed by SwiftUI".

- What does it mean when Apple says "value managed by SwiftUI"?

Before answering this question, let's make some background research. SwiftUI mostly relies on Structs, as you can see whenever you create a new SwiftUI View. It would be fair to ask why, since structs have limited customizations. Well, structs are simpler, lighter and faster than classes. Also, before SwiftUI, we used to have classes for Views because of all those inheritances. Thanks to the usage of struct, SwiftUI is actually leading us to a new way of thinking and designing our apps. 

Now, we need to use structs and our views are supposed to be "immutable", meaning that you will use the data initialized with the struct, but that's it. You will not be able to modify any values of your struct, right? 

And that's where the magic gets into the game. By using the @State keyword in a struct, you are actually asking SwiftUI to take good care of your property and to manage it for you. SwiftUI will then take your property, and store it somewhere else for you. It actually "removes" your property from your struct and only gives you a wrapper to its value, that you'll use in your view. 

Makes more sense?

By using this, your struct stays immutable, and when you change your @State property (with a Slider, for example), you actually don't change its value inside your struct, but you use the wrapper that SwiftUI gives you to modify its value where SwiftUI stored it for you. 

------------ 
So smart, thanks SwiftUI!
