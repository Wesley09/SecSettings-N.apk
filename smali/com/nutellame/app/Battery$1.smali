.class Lcom/nutellame/app/Battery$1;
.super Ljava/lang/Object;
.source "Battery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nutellame/app/Battery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nutellame/app/Battery;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/nutellame/app/Battery;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nutellame/app/Battery$1;->this$0:Lcom/nutellame/app/Battery;

    iput-object p2, p0, Lcom/nutellame/app/Battery$1;->val$context:Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 21
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 22
    .local v2, "i":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.fuelgauge.PowerUsageSummary"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const/high16 v5, 0x14000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :try_start_1
    iget-object v5, p0, Lcom/nutellame/app/Battery$1;->val$context:Landroid/content/Context;

    const-string v6, "statusbar"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 27
    .local v3, "service":Ljava/lang/Object;
    const-string v5, "android.app.StatusBarManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 28
    .local v4, "statusbarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "collapse"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 29
    .local v0, "collapse":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    .end local v0    # "collapse":Ljava/lang/reflect/Method;
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "service":Ljava/lang/Object;
    .end local v4    # "statusbarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/nutellame/app/Battery$1;->val$context:Landroid/content/Context;

    const-string v6, "No disponible :("

    .line 37
    const/4 v7, 0x1

    .line 36
    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 37
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 31
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v2    # "i":Landroid/content/Intent;
    :catch_1
    move-exception v5

    goto :goto_0
.end method
