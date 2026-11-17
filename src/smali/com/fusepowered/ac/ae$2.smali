.class Lcom/fusepowered/ac/ae$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/ac/ae;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/ae;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/fusepowered/ac/ae$2;->a:Lcom/fusepowered/ac/ae;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/fusepowered/ac/ae$2;->a:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ADCVideo;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/ac/ae$2;->a:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/fusepowered/ac/ae$2;->a:Lcom/fusepowered/ac/ae;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/ae;->a(I)V

    goto :goto_0
.end method
