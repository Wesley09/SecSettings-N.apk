.class Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$1;
.super Ljava/lang/Object;
.source "GestureAnywhereBuilderActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$1;->this$0:Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;)I
    .locals 2
    .param p1, "object1"    # Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;
    .param p2, "object2"    # Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;

    .prologue
    .line 78
    iget-object v0, p1, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p1, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$1;->compare(Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;Lcom/android/settings/chameleonos/labs/gestureanywhere/GestureAnywhereBuilderActivity$NamedGesture;)I

    move-result v0

    return v0
.end method
