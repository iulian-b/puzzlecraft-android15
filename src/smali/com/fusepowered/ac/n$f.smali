.class Lcom/fusepowered/ac/n$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Lcom/fusepowered/ac/ADCData$g;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 108
    if-nez p1, :cond_0

    .line 136
    :goto_0
    return v3

    .line 110
    :cond_0
    const-string v0, "update"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$f;->a:Ljava/lang/String;

    .line 111
    const-string v0, "install"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$f;->b:Ljava/lang/String;

    .line 112
    const-string v0, "dynamic_interests"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$f;->c:Ljava/lang/String;

    .line 113
    const-string v0, "user_meta_data"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$f;->d:Ljava/lang/String;

    .line 114
    const-string v0, "in_app_purchase"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$f;->e:Ljava/lang/String;

    .line 115
    const-string v0, "session_end"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$f;->g:Ljava/lang/String;

    .line 116
    const-string v0, "session_start"

    invoke-virtual {p1, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$f;->f:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/n$f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v0, Lcom/fusepowered/ac/ADCData$g;

    invoke-direct {v0}, Lcom/fusepowered/ac/ADCData$g;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/n$f;->h:Lcom/fusepowered/ac/ADCData$g;

    .line 128
    iget-object v0, p0, Lcom/fusepowered/ac/n$f;->h:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "update"

    iget-object v2, p0, Lcom/fusepowered/ac/n$f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/fusepowered/ac/n$f;->h:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "install"

    iget-object v2, p0, Lcom/fusepowered/ac/n$f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/fusepowered/ac/n$f;->h:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "dynamic_interests"

    iget-object v2, p0, Lcom/fusepowered/ac/n$f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/fusepowered/ac/n$f;->h:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "user_meta_data"

    iget-object v2, p0, Lcom/fusepowered/ac/n$f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/fusepowered/ac/n$f;->h:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "in_app_purchase"

    iget-object v2, p0, Lcom/fusepowered/ac/n$f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/fusepowered/ac/n$f;->h:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "session_end"

    iget-object v2, p0, Lcom/fusepowered/ac/n$f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/fusepowered/ac/n$f;->h:Lcom/fusepowered/ac/ADCData$g;

    const-string v1, "session_start"

    iget-object v2, p0, Lcom/fusepowered/ac/n$f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
