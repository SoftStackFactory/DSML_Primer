# Feature Engineering

Feature engineering is about creating new input features from your existing ones.

In general, you can think of data cleaning as a process of subtraction and feature engineering as a process of addition.

This is often one of the most valuable tasks a data scientist can do to improve model performance, for 3 big reasons:

- You can isolate and highlight key information, which helps your algorithms "focus" on what’s important.
- You can bring in your own domain expertise.
- Most importantly, once you understand the "vocabulary" of feature engineering, you can bring in other people’s domain expertise!
  <hr>

## Infuse Domain Knowledge

Going back to our example with the real-estate dataset, let's say you remembered that the housing crisis occurred in the same timeframe...

Well, if you suspect that prices would be affected, you could create an indicator variable for transactions during that period.​ Indicator variables are binary variables that can be either 0 or 1. They "indicate" if an observation meets a certain condition, and they are very useful for isolating key properties.

As you might suspect, "domain knowledge" is very broad and open-ended. At some point, you'll get stuck or exhaust your ideas.

That's where these next few steps come in. These are a few specific heuristics that can help spark more.

<hr>

## Create Interaction Features

Interaction features are combinations of two or more features.

Interaction features can be products, sums, or differences between two features.

#### Example:

- Let's say we already had a feature called 'num_schools', i.e. the number of schools within 5 miles of a property.
- Let's say we also had the feature 'median_school', i.e. the median quality score of those schools.
- However, we might suspect that what's really important is having many school options, but only if they are good.
- Well, to capture that interaction, we could simple create a new feature 'school_score' = 'num_schools' x 'median_school'

<hr>

## Combine Sparse Classes

Sparse classes (in categorical features) are those that have very few total observations. They can be problematic for certain machine learning algorithms, causing models to be overfit.

- There's no formal rule of how many each class needs.
- It also depends on the size of your dataset and the number of other features you have.
- As a rule of thumb, we recommend combining classes until each one has at least ~50 observations. As with any "rule" of thumb, use this as a guideline (not actually as a rule).

<hr>

## Add Dummy Variables

Most machine learning algorithms cannot directly handle categorical features. Specifically, they cannot handle text values.

Therefore, we need to create dummy variables for our categorical features.

Dummy variables are a set of binary (0 or 1) variables that each represent a single class from a categorical feature.

The information you represent is exactly the same, but this numeric representation allows you to pass the technical requirements for algorithms.

<hr>

## Remove Unused Features

**Unused** features are those that don’t make sense to pass into our machine learning algorithms. Examples include:

- ID columns
- Features that wouldn't be available at the time of prediction
- Other text descriptions

**Redundant** features would typically be those that have been replaced by other features that you’ve added during feature engineering.

<hr>

## Video

<a href="http://www.youtube.com/watch?feature=player_embedded&v=N9fDIAflCMY&index=3&list=PLOU2XLYxmsIIuiBfYad6rFYQU_jL2ryal" target="_blank"><img src="http://img.youtube.com/vi/N9fDIAflCMY&index=3&list=PLOU2XLYxmsIIuiBfYad6rFYQU_jL2ryal/0.jpg" 
alt="Feature Engineering" width="120" height="90" border="0" /></a>
