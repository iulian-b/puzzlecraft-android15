.class abstract Lcom/fusepowered/al/impl/sdk/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final e:Ljava/lang/String;

.field protected final f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

.field final g:Lcom/fusepowered/al/sdk/AppLovinLogger;

.field final h:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/fusepowered/al/impl/sdk/ay;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/fusepowered/al/impl/sdk/ay;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/fusepowered/al/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/al/impl/sdk/ay;->g:Lcom/fusepowered/al/sdk/AppLovinLogger;

    invoke-virtual {p2}, Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/al/impl/sdk/ay;->h:Landroid/content/Context;

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/al/impl/sdk/ay;->e:Ljava/lang/String;

    return-object v0
.end method

.method b()V
    .locals 0

    return-void
.end method

.method c()Lcom/fusepowered/al/impl/sdk/p;
    .locals 2

    new-instance v0, Lcom/fusepowered/al/impl/sdk/p;

    iget-object v1, p0, Lcom/fusepowered/al/impl/sdk/ay;->f:Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1}, Lcom/fusepowered/al/impl/sdk/p;-><init>(Lcom/fusepowered/al/impl/sdk/AppLovinSdkImpl;)V

    return-object v0
.end method
