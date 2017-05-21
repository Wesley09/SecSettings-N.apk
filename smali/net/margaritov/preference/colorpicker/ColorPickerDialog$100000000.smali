.class Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    return-void
.end method

.method static access$0(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;)Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v9, v2

    const/4 v10, 0x6

    if-ne v9, v10, :cond_2

    .line 114
    move-object v9, v1

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "input_method"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    move-object v5, v9

    .line 115
    move-object v9, v5

    move-object v10, v1

    invoke-virtual {v10}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v9

    .line 116
    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v9}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 117
    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-gt v9, v10, :cond_0

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xa

    if-ge v9, v10, :cond_1

    .line 119
    :cond_0
    move-object v9, v6

    :try_start_0
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v9

    move v7, v9

    .line 120
    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v9}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000000(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Lnet/margaritov/preference/colorpicker/ColorPickerView;

    move-result-object v9

    move v10, v7

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 121
    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v9}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v10}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000005(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    const/4 v9, 0x1

    move v0, v9

    .line 130
    :goto_1
    return v0

    .line 121
    :catch_0
    move-exception v9

    move-object v7, v9

    .line 123
    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v9}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v9

    const/high16 v10, -0x10000

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 126
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v9}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v9

    const/high16 v10, -0x10000

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 130
    :cond_2
    const/4 v9, 0x0

    move v0, v9

    goto :goto_1
.end method
