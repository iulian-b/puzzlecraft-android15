.class Lcom/fusepowered/ac/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/b;-><init>(Lcom/fusepowered/ac/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/ac/b;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/b;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fusepowered/ac/b$1;->a:Lcom/fusepowered/ac/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fusepowered/ac/b$1;->a:Lcom/fusepowered/ac/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/ac/b;->e:Z

    .line 35
    iget-object v0, p0, Lcom/fusepowered/ac/b$1;->a:Lcom/fusepowered/ac/b;

    iget-boolean v0, v0, Lcom/fusepowered/ac/b;->f:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/fusepowered/ac/b$1;->a:Lcom/fusepowered/ac/b;

    invoke-virtual {v0}, Lcom/fusepowered/ac/b;->e()V

    .line 39
    :cond_0
    return-void
.end method
