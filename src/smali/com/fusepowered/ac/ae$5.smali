.class Lcom/fusepowered/ac/ae$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/ae;->c()V
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
    .line 1091
    iput-object p1, p0, Lcom/fusepowered/ac/ae$5;->a:Lcom/fusepowered/ac/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/fusepowered/ac/ae$5;->a:Lcom/fusepowered/ac/ae;

    iget-boolean v0, v0, Lcom/fusepowered/ac/ae;->C:Z

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/fusepowered/ac/ae$5;->a:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/ae$5;->a:Lcom/fusepowered/ac/ae;

    iget-boolean v0, v0, Lcom/fusepowered/ac/ae;->P:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/ae$5;->a:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/fusepowered/ac/ae$5;->a:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/ac/ADCVideo;->m:Z

    .line 1099
    iget-object v0, p0, Lcom/fusepowered/ac/ae$5;->a:Lcom/fusepowered/ac/ae;

    invoke-virtual {v0}, Lcom/fusepowered/ac/ae;->f()V

    .line 1102
    :cond_0
    return-void
.end method
