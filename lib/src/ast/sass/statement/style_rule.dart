// Copyright 2016 Google Inc. Use of this source code is governed by an
// MIT-style license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:source_span/source_span.dart';

import '../../../visitor/interface/statement.dart';
import '../interpolation.dart';
import '../statement.dart';

class StyleRule implements Statement {
  final Interpolation selector;

  final List<Statement> children;

  final FileSpan span;

  StyleRule(this.selector, Iterable<Statement> children, this.span)
      : children = new List.unmodifiable(children);

  /*=T*/ accept/*<T>*/(StatementVisitor/*<T>*/ visitor) =>
      visitor.visitStyleRule(this);

  String toString() => "$selector {${children.join(" ")}}";
}