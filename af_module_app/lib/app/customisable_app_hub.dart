//******************************************************************************************
//
// customisable_app_hub.dart
//
//
// Copyright (c) 2025, SturnusDev
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice, this
//    list of conditions and the following disclaimer.
//
// 2. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or
//    promote products derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
// FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
// DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
// OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//******************************************************************************************/

// ***** Imports *****

import '../model/a_model_hub.dart';

import 'a_app_customiser.dart';
import 'app_hub.dart';


// ***** Typedefs *****


// ***** Class *****

///
/// Holds references to the various objects used by the Flutter app, such as
///   - A customiser (used to provide custom functionality in the absence of an equivalent
///     to Android's flavours)
///   - The model hub (often called the repository in MVP)
///
class CustomisableAppHub<AC extends AAppCustomiser, MH extends AModelHub> extends AppHub<MH> {


  // ***** Static Constants *****


  // ***** Static Properties *****


  // ***** Static Methods *****


  // ***** Instance Properties *****

  ///
  /// A customiser may be used to provide an equivalent functionality to flavours in Android. It allows
  /// apps to have (e.g.) multiple branding (skinning) or slightly different feature sets, but still
  /// share code.
  ///
  /// The customiser may be accessed by both views (stateless / stateless widgets) and presenters.
  ///

  final AC customiser;

  /// For those who prefer the US spelling
  AC get customizer => customiser;


  // ***** Constructors *****

  /// Constructs a hub.
  ///
  /// * `customiser` or 'customizer' is an object that extends IAppCustomiser (or IAppCustomizer).
  CustomisableAppHub(
      {
        AC? customiser,
        AC? customizer,  // For those who prefer the US spelling

        super.modelHub,
        super.modelRepository,  // For those who prefer this terminology
      }) :
        customiser = ( customiser ?? customizer )!;


// ***** Instance Methods *****

}


// ***** Associated Classes *****


// ***** Extensions *****
