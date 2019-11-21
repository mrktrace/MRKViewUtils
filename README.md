<img src="https://github.com/mrktrace/MRKTransitions/blob/master/mrklogo.jpg" alt="MRKTrace Logo">

# MRKTransitions

MRKTransitions is a Swift pod to make transitions between screens easier, also it provides some default transitions.

## Add the pod 'MRKTransitions' to your [Podfile](http://guides.cocoapods.org/using/the-podfile.html).

  ```ruby
  pod 'MRKTransitions'
  ```
  
  ## Usage

First create your own transition extending from MRKTransition, we high recommend to extend from MRKTransitionSpecific so you can specify the class of the views where you are moving:


```swift
class MyMRKTransition: MRKTransitionSpecific<ViewController1, ViewController2> {
        override func specificPush(from: ViewController1, to: ViewController2, context: UIViewControllerContextTransitioning, time: TimeInterval) {
        to.view.frame = from.view.bounds
        context.containerView.insertSubview(to.view, at: 0)
        let transitionOptions: UIView.AnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        UIView.transition(from: from.view, to: to.view, duration: time, options: transitionOptions) { completed in
            context.completeTransition(completed)
        }
    }
}
```

Congratulations! Have a beer 🍺 you created your first scalable transition!

Now lets put it into use, for that we will just need to create a Transition delegate and include it into the navigation flow
Just use the MRKNavigationTransitionDelegate and pass the Transition class as a parameter:

```swift
let transitionDelegate = MRKNavigationTransitionDelegate(MyMRKTransition.self)
```

This delegate can be used for Push/Pop transitions and so for Present a viewController

```swift
//When the ViewController is about to be presented
viewController.transitioningDelegate = presenter.transitionDelegate

```
But wouldn't it be better if you could just automatize it? In that case just extend your App navigator from the MRKGenericNavigationController and override the transitionRules property! 👑👑👑
With the transitionRules you can specify from what ViewController you are coming, to what ViewController you are going and what transition you wanna use for that case!

```swift
class NavigationController: MRKGenericNavigationController {
    override var transitionRules: [MRKTransitionRule] {
        return [ ViewController1.self ~ MyMRKTransition.self ~ ViewController2.self ]
    }
}
```
Now just use this NavigationController as the root of your App and it will be responsible for using the necesary animations!

I hope this pod is useful to you, and if it saves your life you can get me a beer! 🍺
