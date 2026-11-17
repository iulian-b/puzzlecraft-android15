.class Lcom/fusepowered/ac/ae$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/ae;->e()V
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
    .line 1222
    iput-object p1, p0, Lcom/fusepowered/ac/ae$7;->a:Lcom/fusepowered/ac/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/fusepowered/ac/ae$7;->a:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/ae$7;->a:Lcom/fusepowered/ac/ae;

    iget-object v0, v0, Lcom/fusepowered/ac/ae;->d:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/e;->setVisibility(I)V

    .line 1226
    :cond_0
    return-void
.end method
