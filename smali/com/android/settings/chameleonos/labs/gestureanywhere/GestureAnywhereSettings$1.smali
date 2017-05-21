.class Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings$1;
.super Ljava/lang/Object;
.source "GestureAnywhereSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings$1;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings$1;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings$1;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;

    invoke-virtual {v2}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereSettings;->startActivity(Landroid/content/Intent;)V

    .line 91
    const/4 v0, 0x1

    return v0
.end method
