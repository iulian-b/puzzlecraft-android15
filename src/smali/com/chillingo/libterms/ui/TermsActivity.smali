.class public final Lcom/chillingo/libterms/ui/TermsActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/libterms/ui/TermsActivity$6;
    }
.end annotation


# static fields
.field public static final ACCEPT_BUTTON:Ljava/lang/String; = "acceptButton"

.field public static final ACCEPT_BUTTON_NO_TERMS:Ljava/lang/String; = "acceptButtonNoTerms"

.field public static final AGE_LABEL_TEXT_VIEW:Ljava/lang/String; = "ageLabelTextView"

.field public static final AGE_SEEK_BAR:Ljava/lang/String; = "ageSeekBar"

.field public static final AGE_SEEK_BAR_TEXT:Ljava/lang/String; = "ageSeekBarText"

.field public static final AGE_SEEK_BAR_TEXT_CONTINUOUS_SUFFIX:Ljava/lang/String; = "+"

.field public static final DECLINE_BUTTON:Ljava/lang/String; = "declineButton"

.field public static final DECLINE_BUTTON_NO_TERMS:Ljava/lang/String; = "declineButtonNoTerms"

.field public static final I_ACCEPT_LABEL:Ljava/lang/String; = "iAcceptLabel"

.field public static final LOCKDOWN_DIALOG_WAS_DISPLAYED:Ljava/lang/String; = "lockdownDialogWasDisplayed"

.field public static final LOCKDOWN_EXPIRY_TIME:Ljava/lang/String; = "lockdownExpiryTime"

.field public static final MAIN_VIEW:Ljava/lang/String; = "mainLayout"

.field public static final SCROLL_VIEW:Ljava/lang/String; = "scrollView"

.field public static final TERMS_UI_CONFIG:Ljava/lang/String; = "termsUIConfig"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/chillingo/libterms/config/SharedData;

.field private c:Ljava/util/Date;

.field private d:Z

.field private e:Lcom/chillingo/libterms/TermsUIConfig;

.field private final f:I

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->a:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->d:Z

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->f:I

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->g:I

    .line 70
    const/4 v0, 0x3

    iput v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->h:I

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chillingo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 226
    const-string v0, "acceptButton"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 229
    :try_start_0
    new-instance v1, Lcom/chillingo/libterms/ui/TermsActivity$1;

    invoke-direct {v1, p0}, Lcom/chillingo/libterms/ui/TermsActivity$1;-><init>(Lcom/chillingo/libterms/ui/TermsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    const-string v0, "declineButton"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 246
    :try_start_1
    new-instance v1, Lcom/chillingo/libterms/ui/TermsActivity$2;

    invoke-direct {v1, p0}, Lcom/chillingo/libterms/ui/TermsActivity$2;-><init>(Lcom/chillingo/libterms/ui/TermsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    const-string v0, "ageSeekBarText"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 263
    :try_start_2
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 271
    const-string v1, "ageSeekBar"

    invoke-direct {p0, v1}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 275
    :try_start_3
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    .line 276
    new-instance v3, Lcom/chillingo/libterms/ui/TermsActivity$3;

    invoke-direct {v3, p0, v2, v0}, Lcom/chillingo/libterms/ui/TermsActivity$3;-><init>(Lcom/chillingo/libterms/ui/TermsActivity;ILandroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 301
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->a:Ljava/lang/String;

    const-string v2, "NullPointerException thrown updating the accept button UI component - is the Terms library res folder up-to-date?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    throw v0

    .line 252
    :catch_1
    move-exception v0

    .line 253
    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->a:Ljava/lang/String;

    const-string v2, "NullPointerException thrown updating the decline button UI component - is the Terms library res folder up-to-date?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    throw v0

    .line 264
    :catch_2
    move-exception v0

    .line 265
    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->a:Ljava/lang/String;

    const-string v2, "NullPointerException thrown updating the age textfield UI component - is the Terms library res folder up-to-date?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    throw v0

    .line 295
    :catch_3
    move-exception v0

    .line 296
    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->a:Ljava/lang/String;

    const-string v2, "NullPointerException thrown updating the age seek bar UI component - is the Terms library res folder up-to-date?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    throw v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 99
    if-eqz p1, :cond_1

    .line 100
    const-string v0, "lockdownDialogWasDisplayed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->d:Z

    .line 102
    const-string v0, "lockdownExpiryTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/Date;

    const-string v1, "lockdownExpiryTime"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    .line 105
    :cond_0
    const-string v0, "termsUIConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const-string v0, "termsUIConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/libterms/TermsUIConfig;->uiConfigFromList(Ljava/util/List;)Lcom/chillingo/libterms/TermsUIConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    .line 111
    :cond_1
    return-void
.end method

.method private a(Lcom/chillingo/libterms/TermsUIConfig;)V
    .locals 9

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 416
    const-string v0, "acceptButton"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 417
    const-string v1, "declineButton"

    invoke-direct {p0, v1}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 419
    const-string v2, "ageLabelTextView"

    invoke-direct {p0, v2}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 420
    const-string v3, "iAcceptLabel"

    invoke-direct {p0, v3}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 422
    const-string v4, "mainLayout"

    invoke-direct {p0, v4}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 424
    const-string v5, "ageSeekBarText"

    invoke-direct {p0, v5}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 426
    const-string v6, "ageSeekBar"

    invoke-direct {p0, v6}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    .line 428
    iget-object v7, p1, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarTextBackgroundImage:Ljava/lang/Integer;

    if-eqz v7, :cond_0

    .line 429
    iget-object v7, p1, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarTextBackgroundImage:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 431
    :cond_0
    iget-object v7, p1, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarThumbImage:Ljava/lang/Integer;

    if-eqz v7, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p1, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarThumbImage:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Lcom/chillingo/libterms/utils/GraphicsUtils;->createStateListDrawableForButtonUsingResource(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 434
    :cond_1
    iget-object v7, p1, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarProgressImage:Ljava/lang/Integer;

    if-eqz v7, :cond_2

    .line 435
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p1, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarProgressImage:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 439
    :cond_2
    iget-object v6, p1, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonBackgroundImage:Ljava/lang/Integer;

    if-eqz v6, :cond_3

    .line 440
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p1, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonBackgroundImage:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Lcom/chillingo/libterms/utils/GraphicsUtils;->createStateListDrawableForButtonUsingResource(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/chillingo/libterms/utils/GraphicsUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 443
    :cond_3
    iget-object v6, p1, Lcom/chillingo/libterms/TermsUIConfig;->declineButtonBackgroundImage:Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 444
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p1, Lcom/chillingo/libterms/TermsUIConfig;->declineButtonBackgroundImage:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Lcom/chillingo/libterms/utils/GraphicsUtils;->createStateListDrawableForButtonUsingResource(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/chillingo/libterms/utils/GraphicsUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 447
    :cond_4
    iget-object v6, p1, Lcom/chillingo/libterms/TermsUIConfig;->labelColor:Ljava/lang/Integer;

    if-eqz v6, :cond_5

    .line 448
    iget-object v6, p1, Lcom/chillingo/libterms/TermsUIConfig;->labelColor:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    iget-object v2, p1, Lcom/chillingo/libterms/TermsUIConfig;->labelColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    :cond_5
    iget-object v2, p1, Lcom/chillingo/libterms/TermsUIConfig;->linkTextColor:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 454
    iget-object v2, p1, Lcom/chillingo/libterms/TermsUIConfig;->linkTextColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 457
    :cond_6
    iget-object v2, p1, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonTextColor:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    .line 458
    iget-object v2, p1, Lcom/chillingo/libterms/TermsUIConfig;->acceptButtonTextColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 461
    :cond_7
    iget-object v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->declineButtonTextColor:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 462
    iget-object v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->declineButtonTextColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 465
    :cond_8
    iget-object v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarTextColor:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 466
    iget-object v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->ageSeekBarTextColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    :cond_9
    iget-object v0, p1, Lcom/chillingo/libterms/TermsUIConfig;->activityBackgroundImage:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 471
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/chillingo/libterms/TermsUIConfig;->activityBackgroundImage:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chillingo/libterms/utils/GraphicsUtils;->createStateListDrawableForButtonUsingResource(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/chillingo/libterms/utils/GraphicsUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 473
    :cond_a
    return-void
.end method

.method private a(Lcom/chillingo/libterms/config/SharedData;)V
    .locals 4

    .prologue
    .line 322
    if-nez p1, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No shared data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getTermAcceptanceRequired()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No terms flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getAgeGateRequired()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_2

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No age flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_2
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getTermAcceptanceRequired()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getAgeGateRequired()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 330
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t show a dialog with neither the terms nor the age gate required. The dialog should only be activated in response to the ageVerificationPendingDialogDisplay() callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->b:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chillingo/libterms/utils/LocalisationResourceUtils;->getTermsString(Lcom/chillingo/libterms/model/TermsConfig;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    const-string v0, "iAcceptLabel"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 337
    const v2, -0xff0067

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 338
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    const-string v1, "acceptButton"

    invoke-direct {p0, v1}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 347
    const-string v2, "declineButton"

    invoke-direct {p0, v2}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 349
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getTermAcceptanceRequired()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 353
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    const-string v0, "acceptButton"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 357
    const-string v0, "declineButton"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 381
    :goto_0
    const-string v0, "ageSeekBarText"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 383
    const-string v1, "ageSeekBar"

    invoke-direct {p0, v1}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 385
    const-string v2, "ageLabelTextView"

    invoke-direct {p0, v2}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 386
    invoke-virtual {p1}, Lcom/chillingo/libterms/config/SharedData;->getAgeGateRequired()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 389
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 391
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    .line 410
    :goto_1
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->a:Ljava/lang/String;

    const-string v2, "NullPointerException thrown updating a UI component - is the Terms library res folder up-to-date?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    throw v0

    .line 358
    :catch_1
    move-exception v0

    .line 359
    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->a:Ljava/lang/String;

    const-string v2, "NullPointerException thrown updating a UI component - is the Terms library res folder up-to-date?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    throw v0

    .line 368
    :cond_4
    const/16 v3, 0x8

    :try_start_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    const-string v0, "acceptButtonNoTerms"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 372
    const-string v0, "declineButtonNoTerms"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 373
    :catch_2
    move-exception v0

    .line 374
    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->a:Ljava/lang/String;

    const-string v2, "NullPointerException thrown updating a UI component - is the Terms library res folder up-to-date?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    throw v0

    .line 392
    :catch_3
    move-exception v0

    .line 393
    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->a:Ljava/lang/String;

    const-string v2, "NullPointerException thrown updating a UI component - is the Terms library res folder up-to-date?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    throw v0

    .line 400
    :cond_5
    const/16 v3, 0x8

    :try_start_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 402
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 403
    :catch_4
    move-exception v0

    .line 404
    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->a:Ljava/lang/String;

    const-string v2, "NullPointerException thrown updating a UI component - is the Terms library res folder up-to-date?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    throw v0
.end method

.method static synthetic a(Lcom/chillingo/libterms/ui/TermsActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->f()V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chillingo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 218
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 305
    const-string v0, "acceptButton"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 306
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 307
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->i()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/libterms/config/SharedData;->getAgeGateRequired()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 310
    :goto_0
    if-nez v1, :cond_2

    move v4, v2

    :goto_1
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 311
    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 312
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_4

    const/16 v0, 0x32

    :goto_3
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    return-void

    :cond_1
    move v1, v3

    .line 307
    goto :goto_0

    :cond_2
    move v4, v3

    .line 310
    goto :goto_1

    :cond_3
    move v2, v3

    .line 311
    goto :goto_2

    .line 312
    :cond_4
    const/16 v0, 0xff

    goto :goto_3

    .line 313
    :catch_0
    move-exception v0

    .line 314
    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->a:Ljava/lang/String;

    const-string v2, "NullPointerException thrown updating a UI component - is the Terms library res folder up-to-date?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    throw v0
.end method

.method static synthetic b(Lcom/chillingo/libterms/ui/TermsActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->g()V

    return-void
.end method

.method private c()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 480
    const-string v0, "ageSeekBarText"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 482
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/libterms/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 489
    :goto_0
    return-object v0

    .line 487
    :cond_1
    const-string v0, "ageSeekBar"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 489
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/chillingo/libterms/ui/TermsActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->b()V

    return-void
.end method

.method private d()V
    .locals 8

    .prologue
    .line 493
    sget-object v0, Lcom/chillingo/libterms/config/ServerConfig;->GLOBAL_DEFAULT_WAIT_TIME_SECONDS:Ljava/lang/Integer;

    .line 494
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->i()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v1

    .line 497
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeFailureWaitTime()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 498
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->i()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeFailureWaitTime()Ljava/lang/Integer;

    move-result-object v0

    .line 502
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    .line 503
    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    iget-object v2, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 504
    return-void
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 507
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 514
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->c()Ljava/lang/Integer;

    move-result-object v0

    .line 517
    if-nez v0, :cond_0

    .line 518
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->setAgeOnAcceptance(Ljava/lang/Integer;)V

    .line 524
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v0

    sget-object v1, Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;->DIALOG_ACCEPT_WAS_PRESSED:Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->notifyEvent(Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;)V

    .line 527
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->finish()V

    .line 546
    :goto_0
    return-void

    .line 531
    :cond_1
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->i()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/libterms/config/SharedData;->getCanPassUnderAge()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 533
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->setAgeOnAcceptance(Ljava/lang/Integer;)V

    .line 534
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;

    move-result-object v0

    sget-object v1, Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;->DIALOG_ACCEPT_WAS_PRESSED:Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->notifyEvent(Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;)V

    .line 538
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->finish()V

    goto :goto_0

    .line 542
    :cond_2
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->d()V

    .line 543
    iput-boolean v2, p0, Lcom/chillingo/libterms/ui/TermsActivity;->d:Z

    .line 545
    invoke-virtual {p0, v2}, Lcom/chillingo/libterms/ui/TermsActivity;->showDialog(I)V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->i()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getTermAcceptanceRequired()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->showDialog(I)V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->showDialog(I)V

    goto :goto_0
.end method

.method private h()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 645
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->i()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getAgeGateRequired()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    :goto_0
    return v2

    .line 650
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 653
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->i()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->i()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 655
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->i()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/model/TermsConfig;->getAgeRequired()Ljava/lang/Integer;

    move-result-object v0

    .line 659
    :cond_1
    sget-object v1, Lcom/chillingo/libterms/config/ServerConfig;->GLOBAL_MINIMUM_AGE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 660
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v5, :cond_4

    .line 661
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 664
    :goto_1
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 665
    if-eqz v1, :cond_3

    .line 666
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_2

    move v0, v2

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v2, v3

    .line 668
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private i()Lcom/chillingo/libterms/config/SharedData;
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->b:Lcom/chillingo/libterms/config/SharedData;

    if-nez v0, :cond_0

    .line 676
    new-instance v0, Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chillingo/libterms/config/SharedData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->b:Lcom/chillingo/libterms/config/SharedData;

    .line 677
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->b:Lcom/chillingo/libterms/config/SharedData;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->loadStoredConfig()V

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->b:Lcom/chillingo/libterms/config/SharedData;

    return-object v0
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->i()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->getResourcePackageNameOrDefault()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 562
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 565
    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->startActivity(Landroid/content/Intent;)V

    .line 566
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 684
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 685
    const-string v0, "scrollView"

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 686
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/chillingo/libterms/ui/TermsActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity$5;-><init>(Lcom/chillingo/libterms/ui/TermsActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 692
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 122
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "terms"

    const-string v3, "layout"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 126
    if-nez v1, :cond_0

    .line 127
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to obtain terms layout resource (package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_0
    invoke-virtual {p0, v1}, Lcom/chillingo/libterms/ui/TermsActivity;->setContentView(I)V

    .line 132
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "uiConfig"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_1

    .line 134
    invoke-static {v1}, Lcom/chillingo/libterms/TermsUIConfig;->uiConfigFromList(Ljava/util/List;)Lcom/chillingo/libterms/TermsUIConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->a()V

    .line 138
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->b()V

    .line 141
    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    if-nez v1, :cond_2

    .line 142
    invoke-static {p0, v0}, Lcom/chillingo/libterms/ui/TermsUIConfigProvider;->defaultUIConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/chillingo/libterms/TermsUIConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Lcom/chillingo/libterms/TermsUIConfig;)V

    .line 148
    :cond_3
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->i()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Lcom/chillingo/libterms/config/SharedData;)V

    .line 151
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/libterms/ui/TermsObservable;->addObserver(Ljava/util/Observer;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "termstheme"

    const-string v2, "style"

    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 576
    packed-switch p1, :pswitch_data_0

    .line 615
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 578
    :pswitch_0
    new-instance v0, Lcom/chillingo/libterms/ui/InfoDialog;

    iget-object v2, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/chillingo/libterms/ui/InfoDialog;-><init>(Landroid/content/Context;ILcom/chillingo/libterms/TermsUIConfig;Ljava/lang/String;)V

    .line 579
    const-string v1, "criteriaNotMetDescription"

    invoke-direct {p0, v1}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/InfoDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 580
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/InfoDialog;->setCancelable(Z)V

    .line 581
    new-instance v1, Lcom/chillingo/libterms/ui/TermsActivity$4;

    invoke-direct {v1, p0}, Lcom/chillingo/libterms/ui/TermsActivity$4;-><init>(Lcom/chillingo/libterms/ui/TermsActivity;)V

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/InfoDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 604
    :pswitch_1
    new-instance v0, Lcom/chillingo/libterms/ui/InfoDialog;

    iget-object v2, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/chillingo/libterms/ui/InfoDialog;-><init>(Landroid/content/Context;ILcom/chillingo/libterms/TermsUIConfig;Ljava/lang/String;)V

    .line 605
    const-string v1, "declineErrorDescription"

    invoke-direct {p0, v1}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/InfoDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 606
    const-string v1, "declineErrorButton"

    invoke-direct {p0, v1}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/InfoDialog;->setPositiveButton(Ljava/lang/String;)V

    goto :goto_0

    .line 610
    :pswitch_2
    new-instance v0, Lcom/chillingo/libterms/ui/InfoDialog;

    iget-object v2, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/chillingo/libterms/ui/InfoDialog;-><init>(Landroid/content/Context;ILcom/chillingo/libterms/TermsUIConfig;Ljava/lang/String;)V

    .line 611
    const-string v1, "declineErrorDescriptionNoTerms"

    invoke-direct {p0, v1}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/InfoDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 612
    const-string v1, "declineErrorButton"

    invoke-direct {p0, v1}, Lcom/chillingo/libterms/ui/TermsActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/ui/InfoDialog;->setPositiveButton(Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 172
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->d:Z

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->dismissDialog(I)V

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->b()V

    .line 179
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/chillingo/libterms/utils/ApiUtils;->isRunningOnDeviceWithMinimumAPILevel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 181
    or-int/lit16 v0, v0, 0x400

    .line 182
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 184
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "lockdownExpiryTime"

    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->c:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 81
    :cond_0
    const-string v0, "lockdownDialogWasDisplayed"

    iget-boolean v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "termsUIConfig"

    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity;->e:Lcom/chillingo/libterms/TermsUIConfig;

    invoke-virtual {v1}, Lcom/chillingo/libterms/TermsUIConfig;->uiConfigAsArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 86
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 161
    invoke-static {}, Lcom/chillingo/libterms/ui/TermsObservable;->getInstance()Lcom/chillingo/libterms/ui/TermsObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/libterms/ui/TermsObservable;->deleteObserver(Ljava/util/Observer;)V

    .line 162
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 624
    check-cast p1, Lcom/chillingo/libterms/ui/TermsObservable;

    .line 626
    .end local p1    # "observable":Ljava/util/Observable;
    sget-object v0, Lcom/chillingo/libterms/ui/TermsActivity$6;->a:[I

    check-cast p2, Lcom/chillingo/libterms/ui/TermsObservable$Events;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/chillingo/libterms/ui/TermsObservable$Events;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 629
    :pswitch_0
    invoke-virtual {p1}, Lcom/chillingo/libterms/ui/TermsObservable;->downloadWasSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->i()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/SharedData;->loadStoredConfig()V

    .line 633
    invoke-direct {p0}, Lcom/chillingo/libterms/ui/TermsActivity;->i()Lcom/chillingo/libterms/config/SharedData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Lcom/chillingo/libterms/config/SharedData;)V

    goto :goto_0

    .line 626
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
