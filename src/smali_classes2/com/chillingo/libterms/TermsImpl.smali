.class public Lcom/chillingo/libterms/TermsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chillingo/libterms/Terms;
.implements Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/libterms/TermsImpl$1;
    }
.end annotation


# instance fields
.field a:Lcom/chillingo/libterms/TermsListener;

.field b:Landroid/app/Activity;

.field c:Lcom/chillingo/libterms/http/TermsConfigController;

.field d:Lcom/chillingo/libterms/TermsUIConfig;

.field e:Lcom/chillingo/libterms/config/SharedData;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:J

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/chillingo/libterms/TermsListener;Lcom/chillingo/libterms/http/TermsConfigController;Lcom/chillingo/libterms/config/SharedData;ZLcom/chillingo/libterms/Terms$TermsComplianceLevel;Lcom/chillingo/libterms/TermsUIConfig;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "termsListener"    # Lcom/chillingo/libterms/TermsListener;
    .param p3, "termsConfigController"    # Lcom/chillingo/libterms/http/TermsConfigController;
    .param p4, "sharedData"    # Lcom/chillingo/libterms/config/SharedData;
    .param p5, "preCOPPA"    # Z
    .param p6, "termsComplianceLevel"    # Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
    .param p7, "uiConfig"    # Lcom/chillingo/libterms/TermsUIConfig;
    .param p8, "resourcePackageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "Terms"

    iput-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->f:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/chillingo/libterms/TermsImpl;->g:I

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chillingo/libterms/TermsImpl;->h:J

    .line 33
    iput v4, p0, Lcom/chillingo/libterms/TermsImpl;->i:I

    .line 34
    iput-boolean v4, p0, Lcom/chillingo/libterms/TermsImpl;->j:Z

    .line 35
    iput-boolean v4, p0, Lcom/chillingo/libterms/TermsImpl;->k:Z

    .line 36
    iput-boolean v4, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    .line 72
    const-string v0, "Terms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Terms constructing [listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][configController "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][preCoppa "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[resPkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][cmpLvl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p6}, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-nez p2, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TermsListener must be set on construction of Terms"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    if-nez p1, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    iput-object p7, p0, Lcom/chillingo/libterms/TermsImpl;->d:Lcom/chillingo/libterms/TermsUIConfig;

    .line 83
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p0}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->addObserver(Ljava/util/Observer;)V

    .line 86
    iput-object p2, p0, Lcom/chillingo/libterms/TermsImpl;->a:Lcom/chillingo/libterms/TermsListener;

    .line 87
    iput-object p1, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    .line 88
    iput-object p3, p0, Lcom/chillingo/libterms/TermsImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController;

    .line 89
    iput-boolean p5, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    .line 90
    iput-object p6, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    .line 93
    if-nez p4, :cond_2

    .line 94
    new-instance v0, Lcom/chillingo/libterms/config/SharedData;

    invoke-direct {v0, p1}, Lcom/chillingo/libterms/config/SharedData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->loadStoredConfig()V

    .line 101
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0, p8}, Lcom/chillingo/libterms/config/SharedData;->setResourcePackageName(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->saveStoredConfig()V

    .line 105
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-direct {p0, v0, p6}, Lcom/chillingo/libterms/TermsImpl;->a(Lcom/chillingo/libterms/config/SharedData;Lcom/chillingo/libterms/Terms$TermsComplianceLevel;)V

    .line 108
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/TermsImpl;->b(Lcom/chillingo/libterms/config/SharedData;)V

    .line 111
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/TermsImpl;->a(Lcom/chillingo/libterms/config/SharedData;)V

    .line 114
    invoke-direct {p0}, Lcom/chillingo/libterms/TermsImpl;->a()V

    .line 117
    const-string v0, "release"

    .line 122
    const-string v1, "Terms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** [TermsSDK] v2.8 build 470 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") ***"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 96
    :cond_2
    iput-object p4, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/chillingo/libterms/TermsListener;ZLcom/chillingo/libterms/Terms$TermsComplianceLevel;Lcom/chillingo/libterms/TermsUIConfig;Ljava/lang/String;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "termsListener"    # Lcom/chillingo/libterms/TermsListener;
    .param p3, "preCOPPA"    # Z
    .param p4, "termsComplianceLevel"    # Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
    .param p5, "uiConfig"    # Lcom/chillingo/libterms/TermsUIConfig;
    .param p6, "resourcePackageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/chillingo/libterms/TermsImpl;-><init>(Landroid/app/Activity;Lcom/chillingo/libterms/TermsListener;Lcom/chillingo/libterms/http/TermsConfigController;Lcom/chillingo/libterms/config/SharedData;ZLcom/chillingo/libterms/Terms$TermsComplianceLevel;Lcom/chillingo/libterms/TermsUIConfig;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v1, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_GATED:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v1, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v0, v1, :cond_1

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    const-string v0, "Terms"

    const-string v1, "informListenerIfDialogRequired - preCOPPA age gated game without download - not doing anything yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-direct {p0}, Lcom/chillingo/libterms/TermsImpl;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/chillingo/libterms/TermsImpl;->b()V

    goto :goto_0

    .line 180
    :cond_2
    invoke-direct {p0}, Lcom/chillingo/libterms/TermsImpl;->c()V

    goto :goto_0
.end method

.method private a(Lcom/chillingo/libterms/config/SharedData;Lcom/chillingo/libterms/Terms$TermsComplianceLevel;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 435
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getPreviousTermsComplianceLevel()Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    move-result-object v3

    .line 438
    if-nez v3, :cond_1

    .line 439
    invoke-virtual {p1, p2}, Lcom/chillingo/libterms/config/SharedData;->setPreviousTermsComplianceLevel(Lcom/chillingo/libterms/Terms$TermsComplianceLevel;)V

    .line 440
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->saveStoredConfig()V

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    if-eq v3, p2, :cond_0

    .line 445
    const-string v0, "Terms"

    const-string v4, "Compliance level change detected!"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    sget-object v0, Lcom/chillingo/libterms/config/ServerConfig;->GLOBAL_MINIMUM_AGE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 451
    iget-object v4, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v4}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 452
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 455
    :cond_2
    iget-object v4, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v4}, Lcom/chillingo/libterms/config/SharedData;->getAgeOfUserOnAccept()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v4}, Lcom/chillingo/libterms/config/SharedData;->getAgeOfUserOnAccept()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v0, v4, :cond_7

    move v0, v1

    .line 460
    :goto_1
    invoke-virtual {p1, v5}, Lcom/chillingo/libterms/config/SharedData;->setDateLastCheckedDate(Ljava/util/Date;)V

    .line 461
    invoke-virtual {p1, v5}, Lcom/chillingo/libterms/config/SharedData;->setLastTermsConfig(Lcom/chillingo/libterms/model/TermsConfig;)V

    .line 465
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/chillingo/libterms/config/SharedData;->setReacceptIsPending(Ljava/lang/Boolean;)V

    .line 469
    sget-object v4, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_FULLY_COMPLIANT:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v3, v4, :cond_5

    .line 470
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chillingo/libterms/config/SharedData;->setReacceptIsPending(Ljava/lang/Boolean;)V

    .line 475
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chillingo/libterms/config/SharedData;->setAgeOfUserOnAccept(Ljava/lang/Integer;)V

    .line 491
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getReacceptIsPending()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 492
    const-string v0, "Terms"

    const-string v1, "Compliance level change necessitates a re-display of the dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_4
    invoke-virtual {p1, p2}, Lcom/chillingo/libterms/config/SharedData;->setPreviousTermsComplianceLevel(Lcom/chillingo/libterms/Terms$TermsComplianceLevel;)V

    .line 497
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->saveStoredConfig()V

    goto :goto_0

    .line 477
    :cond_5
    sget-object v1, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v3, v1, :cond_6

    sget-object v1, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_GATED:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne p2, v1, :cond_6

    .line 480
    if-ne v0, v2, :cond_3

    .line 481
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chillingo/libterms/config/SharedData;->setReacceptIsPending(Ljava/lang/Boolean;)V

    goto :goto_2

    .line 483
    :cond_6
    sget-object v1, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_GATED:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v3, v1, :cond_3

    sget-object v1, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne p2, v1, :cond_3

    .line 486
    if-ne v0, v2, :cond_3

    .line 487
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chillingo/libterms/config/SharedData;->setReacceptIsPending(Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->k:Z

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->j:Z

    .line 192
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->a:Lcom/chillingo/libterms/TermsListener;

    invoke-interface {v0}, Lcom/chillingo/libterms/TermsListener;->ageVerificationPendingDialogDisplay()V

    .line 194
    :cond_0
    return-void
.end method

.method private b(Lcom/chillingo/libterms/config/SharedData;)V
    .locals 10

    .prologue
    .line 243
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getMillisSinceLastCheckedDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/chillingo/libterms/TermsImpl;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 247
    :cond_0
    const-string v0, "Terms"

    const-string v1, "Starting TermsConfigController..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v1, 0x0

    .line 252
    :try_start_0
    const-string v0, "http%3A%2F%2Fchillingo-terms.chillingocloud.com"

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 258
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 259
    :cond_1
    const-string v1, "http://chillingo-terms.chillingocloud.com"

    .line 266
    :cond_2
    invoke-static {}, Lcom/chillingo/libterms/config/ServerConfig;->getCombinedSDKAndAPIString()Ljava/lang/String;

    move-result-object v2

    .line 269
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController;

    if-nez v0, :cond_3

    .line 270
    new-instance v0, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;

    invoke-direct {v0}, Lcom/chillingo/libterms/http/TermsConfigControllerAsyncImpl;-><init>()V

    iput-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController;

    .line 271
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController;

    invoke-direct {p0}, Lcom/chillingo/libterms/TermsImpl;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    iget-boolean v5, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    iget-object v6, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v6}, Lcom/chillingo/libterms/config/SharedData;->getAgeOfUserOnAccept()Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    iget-object v8, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    iget-object v9, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v9}, Lcom/chillingo/libterms/config/SharedData;->getResourcePackageNameOrDefault()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/chillingo/libterms/TermsImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v0 .. v9}, Lcom/chillingo/libterms/http/TermsConfigController;->initWithConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/libterms/config/SharedData;ZLjava/lang/Integer;Lcom/chillingo/libterms/Terms$TermsComplianceLevel;Landroid/app/Activity;Ljava/lang/String;)V

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController;

    invoke-interface {v0, p0}, Lcom/chillingo/libterms/http/TermsConfigController;->startDownloadTermsConfig(Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;)V

    .line 282
    :goto_1
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string v2, "Terms"

    const-string v3, "Unsupported encoding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 279
    :cond_4
    const-string v0, "Terms"

    const-string v1, "TermsConfig is up-to-date"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->k:Z

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->k:Z

    .line 205
    sget-object v0, Lcom/chillingo/libterms/TermsImpl$1;->a:[I

    iget-object v1, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    invoke-virtual {v1}, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported compliance level"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :pswitch_0
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getAgeOfUserOnAccept()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getAgeOfUserOnAccept()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lcom/chillingo/libterms/TermsImpl;->d()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->a:Lcom/chillingo/libterms/TermsListener;

    invoke-interface {v0}, Lcom/chillingo/libterms/TermsListener;->ageVerificationCriteriaMet()V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->a:Lcom/chillingo/libterms/TermsListener;

    invoke-interface {v0}, Lcom/chillingo/libterms/TermsListener;->ageVerificationCriteriaNotMet()V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->a:Lcom/chillingo/libterms/TermsListener;

    invoke-interface {v0}, Lcom/chillingo/libterms/TermsListener;->ageVerificationCriteriaMet()V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private d()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 239
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/chillingo/libterms/config/ServerConfig;->GLOBAL_MINIMUM_AGE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 289
    :try_start_0
    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 290
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-object v0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    const-string v2, "Terms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t get package name [pkgName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 508
    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getTermAcceptanceRequired()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getTermAcceptanceRequired()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getAgeGateRequired()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getAgeGateRequired()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    const-string v1, "Terms"

    const-string v2, "isDialogRequiredToBeDisplayed - populateSharedDataWithDialogLogic determined that it\'s not required"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :goto_0
    return v0

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getHasAcceptedOnFirstRun()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getHasAcceptedOnFirstRun()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 517
    :cond_1
    const-string v0, "Terms"

    const-string v2, "isDialogRequiredToBeDisplayed - still not accepted on first run"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 518
    goto :goto_0

    .line 522
    :cond_2
    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getReacceptIsPending()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getReacceptIsPending()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 525
    const-string v0, "Terms"

    const-string v2, "isDialogRequiredToBeDisplayed - pending reaccept"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 526
    goto :goto_0

    .line 532
    :cond_3
    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v3, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getAgeOfUserOnAccept()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v2}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v3}, Lcom/chillingo/libterms/config/SharedData;->getAgeOfUserOnAccept()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 536
    const-string v0, "Terms"

    const-string v2, "isDialogRequiredToBeDisplayed - new age is older than current accept"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 537
    goto :goto_0

    .line 541
    :cond_4
    const-string v1, "Terms"

    const-string v2, "isDialogRequiredToBeDisplayed - not required - inform that we\'re all good"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should specify packageName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    const-string v0, "en"

    .line 312
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 313
    const-string v2, "Terms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Users current Locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "chillingo_language"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 317
    if-eqz v2, :cond_1

    .line 318
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_1
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    const-string v2, "Terms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Country code mismatch.  Device locale language code is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " which differs to language code determined from resource package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_2
    return-object v0
.end method

.method a(Lcom/chillingo/libterms/config/SharedData;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 336
    .line 342
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v3, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_FULLY_COMPLIANT:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v0, v3, :cond_4

    .line 343
    const-string v0, "Terms"

    const-string v3, "Dialog logic: pre-coppa & fully compliant - tau"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move v3, v1

    move v4, v1

    .line 386
    :goto_0
    iget-object v5, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v5}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v5

    .line 387
    if-eqz v5, :cond_3

    .line 388
    invoke-virtual {v5}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_0

    if-ne v3, v2, :cond_0

    .line 393
    const-string v3, "Terms"

    const-string v6, "Dialog logic: Server override - disabled age gate"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 396
    :cond_0
    invoke-virtual {v5}, Lcom/chillingo/libterms/model/TermsConfig;->getRequiresTermsAccept()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/chillingo/libterms/model/TermsConfig;->getRequiresTermsAccept()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    if-ne v4, v2, :cond_1

    .line 401
    const-string v4, "Terms"

    const-string v6, "Dialog logic: Server override - disabled terms acceptance"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    .line 404
    :cond_1
    invoke-virtual {v5}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    if-nez v3, :cond_2

    .line 409
    const-string v1, "Terms"

    const-string v3, "Dialog logic: Server override - enabled age gate"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 412
    :cond_2
    invoke-virtual {v5}, Lcom/chillingo/libterms/model/TermsConfig;->getRequiresTermsAccept()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v5}, Lcom/chillingo/libterms/model/TermsConfig;->getRequiresTermsAccept()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v2, :cond_3

    if-nez v4, :cond_3

    .line 417
    const-string v1, "Terms"

    const-string v4, "Dialog logic: Server override - enabled terms acceptance"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 422
    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chillingo/libterms/config/SharedData;->setTermAcceptanceRequired(Ljava/lang/Boolean;)V

    .line 423
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chillingo/libterms/config/SharedData;->setAgeGateRequired(Ljava/lang/Boolean;)V

    .line 424
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chillingo/libterms/config/SharedData;->setCanPassUnderAge(Ljava/lang/Boolean;)V

    .line 426
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->saveStoredConfig()V

    .line 427
    return-void

    .line 349
    :cond_4
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v3, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v0, v3, :cond_5

    .line 350
    const-string v0, "Terms"

    const-string v3, "Dialog logic: pre-coppa & age sensitive - taU"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    move v3, v1

    move v4, v1

    .line 353
    goto/16 :goto_0

    .line 356
    :cond_5
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v3, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_GATED:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v0, v3, :cond_6

    .line 357
    const-string v0, "Terms"

    const-string v3, "Dialog logic: pre-coppa & age gated - tau"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move v3, v1

    move v4, v1

    .line 360
    goto/16 :goto_0

    .line 364
    :cond_6
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v3, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_FULLY_COMPLIANT:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v0, v3, :cond_7

    .line 365
    const-string v0, "Terms"

    const-string v3, "Dialog logic: post-coppa & fully compliant - TaU"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    move v3, v1

    move v4, v2

    .line 368
    goto/16 :goto_0

    .line 371
    :cond_7
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v3, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_SENSITIVE:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v0, v3, :cond_8

    .line 372
    const-string v0, "Terms"

    const-string v3, "Dialog logic: post-coppa & age sensitive - TAU"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    move v3, v2

    move v4, v2

    .line 375
    goto/16 :goto_0

    .line 378
    :cond_8
    iget-boolean v0, p0, Lcom/chillingo/libterms/TermsImpl;->l:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->m:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    sget-object v3, Lcom/chillingo/libterms/Terms$TermsComplianceLevel;->TERMS_COMPLIANCE_LEVEL_AGE_GATED:Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    if-ne v0, v3, :cond_9

    .line 379
    const-string v0, "Terms"

    const-string v3, "Dialog logic: post-coppa & age gated - TAu"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move v3, v2

    move v4, v2

    .line 382
    goto/16 :goto_0

    :cond_9
    move v0, v1

    move v3, v1

    move v4, v1

    goto/16 :goto_0
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->deleteObserver(Ljava/util/Observer;)V

    .line 132
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 133
    return-void
.end method

.method public flushCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 637
    const-string v0, "Terms"

    const-string v1, "*** Clearing Cache ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->loadStoredConfig()V

    .line 640
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0, v2}, Lcom/chillingo/libterms/config/SharedData;->setLastTermsConfig(Lcom/chillingo/libterms/model/TermsConfig;)V

    .line 641
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0, v2}, Lcom/chillingo/libterms/config/SharedData;->setDateLastCheckedDate(Ljava/util/Date;)V

    .line 642
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->saveStoredConfig()V

    .line 643
    return-void
.end method

.method public intentForEndUserLicenseAgreement()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 160
    new-instance v0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;

    iget-object v1, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v1}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v3}, Lcom/chillingo/libterms/config/SharedData;->getResourcePackageNameOrDefault()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;-><init>(Lcom/chillingo/libterms/model/TermsConfig;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->intentForEndUserLicenseAgreement()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public intentForPrivacyPolicy()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 156
    new-instance v0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;

    iget-object v1, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v1}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v3}, Lcom/chillingo/libterms/config/SharedData;->getResourcePackageNameOrDefault()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;-><init>(Lcom/chillingo/libterms/model/TermsConfig;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->intentForPrivacyPolicy()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public intentForTermsDialogActivity()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    const-class v2, Lcom/chillingo/libterms/ui/TermsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/chillingo/libterms/TermsImpl;->d:Lcom/chillingo/libterms/TermsUIConfig;

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "uiConfig"

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->d:Lcom/chillingo/libterms/TermsUIConfig;

    invoke-virtual {v2}, Lcom/chillingo/libterms/TermsUIConfig;->uiConfigAsArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 148
    :cond_0
    return-object v0
.end method

.method public intentForTermsOfService()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 152
    new-instance v0, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;

    iget-object v1, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v1}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/TermsImpl;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v3}, Lcom/chillingo/libterms/config/SharedData;->getResourcePackageNameOrDefault()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;-><init>(Lcom/chillingo/libterms/model/TermsConfig;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chillingo/libterms/ui/TermsTextIntentProvider;->intentForTermsOfService()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public termsDownloadFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 547
    const-string v0, "Terms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Terms config download failed [reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsObservable;

    move-result-object v0

    .line 551
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/TermsObservable;->setDownloadWasSuccessful(Z)V

    .line 552
    sget-object v1, Lcom/chillingo/libterms/ui/TermsObservable$Events;->TERMS_DOWNLOAD_FINISHED:Lcom/chillingo/libterms/ui/TermsObservable$Events;

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/TermsObservable;->notifyEvent(Lcom/chillingo/libterms/ui/TermsObservable$Events;)V

    .line 555
    iget v0, p0, Lcom/chillingo/libterms/TermsImpl;->i:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 556
    iget v0, p0, Lcom/chillingo/libterms/TermsImpl;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chillingo/libterms/TermsImpl;->i:I

    .line 558
    const-string v0, "Terms"

    const-string v1, "Retrying the download..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController;

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No termsConfigController on retry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->c:Lcom/chillingo/libterms/http/TermsConfigController;

    invoke-interface {v0, p0}, Lcom/chillingo/libterms/http/TermsConfigController;->startDownloadTermsConfig(Lcom/chillingo/libterms/http/TermsConfigController$TermsConfigControllerListener;)V

    .line 567
    :goto_0
    return-void

    .line 565
    :cond_1
    const-string v0, "Terms"

    const-string v1, "Failed to download despite retries"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public termsDownloaded(Lcom/chillingo/libterms/model/TermsConfig;)V
    .locals 3
    .param p1, "termsConfig"    # Lcom/chillingo/libterms/model/TermsConfig;

    .prologue
    .line 571
    const-string v0, "Terms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Terms config downloaded [termsConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->loadStoredConfig()V

    .line 576
    invoke-virtual {p1}, Lcom/chillingo/libterms/model/TermsConfig;->getRequiresReaccept()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {p1}, Lcom/chillingo/libterms/model/TermsConfig;->getRequiresReaccept()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->setReacceptIsPending(Ljava/lang/Boolean;)V

    .line 578
    :cond_0
    invoke-virtual {p1}, Lcom/chillingo/libterms/model/TermsConfig;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {p1}, Lcom/chillingo/libterms/model/TermsConfig;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->setCountryCode(Ljava/lang/String;)V

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->setDateLastCheckedDate(Ljava/util/Date;)V

    .line 583
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/SharedData;->setLastTermsConfig(Lcom/chillingo/libterms/model/TermsConfig;)V

    .line 586
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/TermsImpl;->a(Lcom/chillingo/libterms/config/SharedData;)V

    .line 588
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->saveStoredConfig()V

    .line 593
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsObservable;

    move-result-object v0

    .line 594
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/TermsObservable;->setDownloadWasSuccessful(Z)V

    .line 595
    sget-object v1, Lcom/chillingo/libterms/ui/TermsObservable$Events;->TERMS_DOWNLOAD_FINISHED:Lcom/chillingo/libterms/ui/TermsObservable$Events;

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/TermsObservable;->notifyEvent(Lcom/chillingo/libterms/ui/TermsObservable$Events;)V

    .line 598
    invoke-direct {p0}, Lcom/chillingo/libterms/TermsImpl;->a()V

    .line 599
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 607
    sget-object v0, Lcom/chillingo/libterms/TermsImpl$1;->b:[I

    check-cast p2, Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 627
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown event while observing TermsActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :pswitch_0
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->loadStoredConfig()V

    .line 611
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getAgeOnAcceptance()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->setAgeOfUserOnAccept(Ljava/lang/Integer;)V

    .line 613
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    iget-object v1, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v1}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/libterms/model/TermsConfig;->getVersion()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->setVersionUserAccepted(Ljava/lang/Integer;)V

    .line 618
    :goto_0
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->setHasAcceptedOnFirstRun(Ljava/lang/Boolean;)V

    .line 619
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->setReacceptIsPending(Ljava/lang/Boolean;)V

    .line 620
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->saveStoredConfig()V

    .line 623
    invoke-direct {p0}, Lcom/chillingo/libterms/TermsImpl;->c()V

    .line 629
    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/TermsImpl;->e:Lcom/chillingo/libterms/config/SharedData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->setVersionUserAccepted(Ljava/lang/Integer;)V

    goto :goto_0

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
