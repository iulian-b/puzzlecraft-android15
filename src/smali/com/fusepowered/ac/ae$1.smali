.class Lcom/fusepowered/ac/ae$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/ae;->a(I)V
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
    .line 542
    iput-object p1, p0, Lcom/fusepowered/ac/ae$1;->a:Lcom/fusepowered/ac/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/fusepowered/ac/ae$1;->a:Lcom/fusepowered/ac/ae;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/ac/ae;->B:Z

    .line 546
    return-void
.end method
