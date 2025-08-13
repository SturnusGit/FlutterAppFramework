//******************************************************************************************
//
// app_hub.dart
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


// ***** Typedefs *****


// ***** Class *****

///
/// Holds references to the various objects used by the Flutter app, such as
/// the model hub (often called the repository in MVP).
///
class AppHub<MH extends AModelHub> {


  // ***** Static Constants *****


  // ***** Static Properties *****


  // ***** Static Methods *****


  // ***** Instance Properties *****

  ///
  /// The model hub (or repository) manages the agents (models) used by the app, as well as the
  /// data exchange.
  ///

  final MH modelHub;

  /// For those who prefer this terminology
  MH get modelRepository => modelHub;


  // ***** Constructors *****

  /// Constructs a hub.
  ///
  /// * `modelHub` or 'modelRepository' is an object that extends IModelHub (or IModelRepository). Whichever terminology
  /// you prefer, one must be supplied.
  AppHub(
      {
        MH? modelHub,
        MH? modelRepository,  // For those who prefer this terminology
      }) :
    modelHub = ( modelHub ?? modelRepository )!;  // One of these *must* be supplied


  // ***** Instance Methods *****

}


// ***** Associated Classes *****


// ***** Extensions *****
