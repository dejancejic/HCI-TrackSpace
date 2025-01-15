﻿#pragma checksum "..\..\..\..\..\Forms\Pages\AddUserPage.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "867E89CF0296A1DC65381D0251EEC0715FA78FAB"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Converters;
using MaterialDesignThemes.Wpf.Transitions;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using TrackSpace.Forms.Pages;


namespace TrackSpace.Forms.Pages {
    
    
    /// <summary>
    /// AddUserPage
    /// </summary>
    public partial class AddUserPage : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 16 "..\..\..\..\..\Forms\Pages\AddUserPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button closeBtn;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\..\..\..\Forms\Pages\AddUserPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox usernameTF;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\..\..\..\Forms\Pages\AddUserPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.PasswordBox passwordTF;
        
        #line default
        #line hidden
        
        
        #line 45 "..\..\..\..\..\Forms\Pages\AddUserPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.PasswordBox passwordRepeatTF;
        
        #line default
        #line hidden
        
        
        #line 54 "..\..\..\..\..\Forms\Pages\AddUserPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox mailTF;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "8.0.3.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/TrackSpace;component/forms/pages/adduserpage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\..\Forms\Pages\AddUserPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "8.0.3.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.closeBtn = ((System.Windows.Controls.Button)(target));
            return;
            case 2:
            this.usernameTF = ((System.Windows.Controls.TextBox)(target));
            
            #line 29 "..\..\..\..\..\Forms\Pages\AddUserPage.xaml"
            this.usernameTF.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.UsernameTextBox_TextChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.passwordTF = ((System.Windows.Controls.PasswordBox)(target));
            
            #line 37 "..\..\..\..\..\Forms\Pages\AddUserPage.xaml"
            this.passwordTF.PasswordChanged += new System.Windows.RoutedEventHandler(this.PasswordBox_PasswordChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.passwordRepeatTF = ((System.Windows.Controls.PasswordBox)(target));
            
            #line 46 "..\..\..\..\..\Forms\Pages\AddUserPage.xaml"
            this.passwordRepeatTF.PasswordChanged += new System.Windows.RoutedEventHandler(this.PasswordBoxRepeat_PasswordChanged);
            
            #line default
            #line hidden
            return;
            case 5:
            this.mailTF = ((System.Windows.Controls.TextBox)(target));
            
            #line 54 "..\..\..\..\..\Forms\Pages\AddUserPage.xaml"
            this.mailTF.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.MailTextBox_TextChanged);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

