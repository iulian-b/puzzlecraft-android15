.class Lcom/fusepowered/ac/ADCVideo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/ADCVideo;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/ac/ADCVideo;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/ADCVideo;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/fusepowered/ac/ADCVideo$1;->a:Lcom/fusepowered/ac/ADCVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo$1;->a:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->D:Lcom/fusepowered/ac/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/e;->setBackgroundColor(I)V

    .line 373
    return-void
.end method
