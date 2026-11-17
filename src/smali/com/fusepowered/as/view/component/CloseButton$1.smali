.class Lcom/fusepowered/as/view/component/CloseButton$1;
.super Ljava/lang/Object;
.source "CloseButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/component/CloseButton;->setVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/view/component/CloseButton;

.field final synthetic val$b:Z


# direct methods
.method constructor <init>(Lcom/fusepowered/as/view/component/CloseButton;Z)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/fusepowered/as/view/component/CloseButton$1;->this$0:Lcom/fusepowered/as/view/component/CloseButton;

    iput-boolean p2, p0, Lcom/fusepowered/as/view/component/CloseButton$1;->val$b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/fusepowered/as/view/component/CloseButton$1;->val$b:Z

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/fusepowered/as/view/component/CloseButton$1;->this$0:Lcom/fusepowered/as/view/component/CloseButton;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/fusepowered/as/view/component/CloseButton$1;->this$0:Lcom/fusepowered/as/view/component/CloseButton;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/CloseButton$1;->this$0:Lcom/fusepowered/as/view/component/CloseButton;

    invoke-static {v1}, Lcom/fusepowered/as/view/component/CloseButton;->access$000(Lcom/fusepowered/as/view/component/CloseButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/CloseButton$1;->this$0:Lcom/fusepowered/as/view/component/CloseButton;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/CloseButton$1;->this$0:Lcom/fusepowered/as/view/component/CloseButton;

    invoke-static {v1}, Lcom/fusepowered/as/view/component/CloseButton;->access$000(Lcom/fusepowered/as/view/component/CloseButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/view/component/CloseButton$1;->this$0:Lcom/fusepowered/as/view/component/CloseButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/fusepowered/as/view/component/CloseButton$1;->this$0:Lcom/fusepowered/as/view/component/CloseButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/CloseButton;->setBackgroundColor(I)V

    goto :goto_0
.end method
