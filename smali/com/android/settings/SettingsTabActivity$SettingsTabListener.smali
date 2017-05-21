.class Lcom/android/settings/SettingsTabActivity$SettingsTabListener;
.super Ljava/lang/Object;
.source "SettingsTabActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsTabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsTabActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/SettingsTabActivity;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SettingsTabActivity;Lcom/android/settings/SettingsTabActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/SettingsTabActivity;
    .param p2, "x1"    # Lcom/android/settings/SettingsTabActivity$1;

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsTabActivity;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "arg0"    # Landroid/app/ActionBar$Tab;
    .param p2, "arg1"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 357
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "arg0"    # Landroid/app/ActionBar$Tab;
    .param p2, "arg1"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsTabActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsTabActivity;->invalidateHeaders()V

    .line 344
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsTabActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsTabActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 345
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "arg0"    # Landroid/app/ActionBar$Tab;
    .param p2, "arg1"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 351
    return-void
.end method
