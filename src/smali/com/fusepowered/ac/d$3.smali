.class Lcom/fusepowered/ac/d$3;
.super Lcom/fusepowered/ac/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/ac/d;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/d;Lcom/fusepowered/ac/d;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/fusepowered/ac/d$3;->a:Lcom/fusepowered/ac/d;

    invoke-direct {p0, p2}, Lcom/fusepowered/ac/j;-><init>(Lcom/fusepowered/ac/d;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fusepowered/ac/d$3;->o:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->e:Lcom/fusepowered/ac/v;

    invoke-virtual {v0}, Lcom/fusepowered/ac/v;->e()V

    .line 113
    return-void
.end method
